#!/usr/bin/env bash

### Convert TWiki TML to Markdown (gfm)

set -Eeuo pipefail
IFS=$'\n\t'

# ---------- Config ----------
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
PROJECT_ROOT="$(cd -- "$SCRIPT_DIR/.." &>/dev/null && pwd)"

SRC_DIR="${SRC_DIR:-$PROJECT_ROOT/Source2025}"
OUT_DIR="${OUT_DIR:-$PROJECT_ROOT/markdown}"
LUA_FILTER="${LUA_FILTER:-$PROJECT_ROOT/scripts/force-fences.lua}"

UTF8_DIR="${UTF8_DIR:-utf8}"
HTML_DIR="${HTML_DIR:-html}"

# Pandoc behavior
PANDOC_TIMEOUT="${PANDOC_TIMEOUT:-90s}"

# Legacy attachments live in the companion repo opengeospatial/hydro-dwg-wiki-docs.
# New attachments will go on the wiki-docs orphan branch of opengeospatial/hydro-dwg
# (see Contributing wiki page), but existing %ATTACHURL% references in Source2025/
# point at content that already lives in the companion repo, so they stay there.
ATTACH_BASE_URL="https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main"

# System pages to skip (pure TWiki infrastructure with no real content)
SKIP_PAGES="WebAtom WebRss WebSearch WebSearchAdvanced WebStatistics WebLeftBar WebNotify WebChanges WebIndex WebTopicList WebTopicCreator WebPreferences"

cd "$PROJECT_ROOT"
[[ -d "$SRC_DIR" ]] || { echo "Missing $SRC_DIR"; exit 1; }
[[ -f "$LUA_FILTER" ]] || { echo "Missing $LUA_FILTER"; exit 1; }

# ---------- Helpers ----------
log() { printf '%s\n' "$*" >&2; }
die() { log "ERROR: $*"; exit 1; }

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "Missing required command: $1"
}

# Prefer GNU sed/awk if available; otherwise fall back.
pick_sed() {
  if command -v gsed >/dev/null 2>&1; then echo "gsed"
  elif command -v sed >/dev/null 2>&1; then echo "sed"
  else die "sed not found"
  fi
}

pick_awk() {
  if command -v gawk >/dev/null 2>&1; then echo "gawk"
  elif command -v awk >/dev/null 2>&1; then echo "awk"
  else die "awk not found"
  fi
}

SED="$(pick_sed)"
AWK="$(pick_awk)"

cleanup() {
  local rc=$?
  trap - EXIT INT TERM HUP
  exit "$rc"
}
trap cleanup EXIT INT TERM HUP

run_with_timeout() {
  # Usage: run_with_timeout <label> <cmd...>
  local label="$1"; shift
  local status=0

  timeout "$PANDOC_TIMEOUT" "$@" || status=$?
  if [[ $status -eq 124 ]]; then
    die "Timed out while processing: ${label}"
  elif [[ $status -ne 0 ]]; then
    die "Command failed (exit ${status}) while processing: ${label}"
  fi
}

# ---------- UTF-8 conversion ----------

convert_to_utf8() {
  local input="$1"
  local output="$2"

  [[ -n "${input:-}" && -n "${output:-}" ]] || die "convert_to_utf8: missing args"
  [[ -f "$input" ]] || die "convert_to_utf8: input not found: $input"

  # If iconv is not available (e.g. Windows without GNU tools), just copy.
  # Source files were already converted to UTF-8 in a prior step.
  if ! command -v iconv >/dev/null 2>&1; then
    cp -f "$input" "$output"
    return 0
  fi

  local -a fallbacks=(WINDOWS-1252 ISO-8859-1 MACROMAN ISO-8859-15)

  local charset detected=""
  charset="$(file -I "$input" 2>/dev/null | "$SED" -nE 's/.*[[:space:]]charset=(.*)$/\1/p' | tr '[:upper:]' '[:lower:]')"

  case "$charset" in
    ""|unknown-8bit|binary) detected="" ;;
    utf-8|utf8)             detected="UTF-8" ;;
    us-ascii|ascii)         detected="UTF-8" ;;
    iso-8859-1|latin1)      detected="ISO-8859-1" ;;
    iso-8859-15|latin9)     detected="ISO-8859-15" ;;
    windows-1252|cp1252)    detected="WINDOWS-1252" ;;
    macintosh|mac-roman|macroman) detected="MACROMAN" ;;
    *) detected="$(printf '%s' "$charset" | tr '[:lower:]' '[:upper:]')" ;;
  esac

  _try_enc() {
    local enc="$1"
    local tmp
    tmp="$(mktemp)"

    if iconv -f "$enc" -t UTF-8 "$input" >"$tmp" 2>/dev/null; then
      if iconv -f UTF-8 -t UTF-8 "$tmp" >/dev/null 2>&1; then
        mv -f "$tmp" "$output"
        log "Converted using encoding: $enc :: $input"
        return 0
      fi
    fi

    return 1
  }

  if [[ -n "$detected" ]]; then
    if _try_enc "$detected"; then
      return 0
    else
      log "Autodetect suggested '$detected' (charset='$charset') but failed; trying fallbacks..."
    fi
  else
    log "Autodetect could not determine charset (charset='$charset'); trying fallbacks..."
  fi

  local enc
  for enc in "${fallbacks[@]}"; do
    [[ -n "$detected" && "$enc" == "$detected" ]] && continue
    if _try_enc "$enc"; then
      return 0
    fi
  done

  die "Failed to convert to UTF-8: $input (tried autodetect + ${fallbacks[*]})"
}

# ---------- Pre-processing steps (on TML before pandoc) ----------

strip_meta() {
  # Drop all %META: lines (TOPICINFO, TOPICPARENT, FILEATTACHMENT)
  "$AWK" '/^%META:/ { next } { print }'
}

strip_color_macros() {
  # Remove TWiki color macros that survive pandoc as literal text
  "$SED" -E 's/%RED%|%GREEN%|%BLUE%|%BLACK%|%MAROON%|%YELLOW%|%ORANGE%|%ENDCOLOR%//g'
}

expand_attachurls() {
  # Replace %ATTACHURL% / %ATTACHURLPATH% (use current topic) and
  # %PUBURL%/HydrologyDWG/<Topic>/ (uses an explicit topic) with the
  # wiki-docs attachment URL.
  local topic="$1"
  local base_url="${ATTACH_BASE_URL}/${topic}"
  "$SED" -E \
    -e "s|%ATTACHURLPATH%|${base_url}|g" \
    -e "s|%ATTACHURL%|${base_url}|g" \
    -e "s|%PUBURLPATH%/HydrologyDWG/|${ATTACH_BASE_URL}/|g" \
    -e "s|%PUBURL%/HydrologyDWG/|${ATTACH_BASE_URL}/|g"
}

strip_system_macros() {
  # Replace or remove TWiki system variables
  "$SED" -E \
    -e 's|%WEB%|HydrologyDWG|g' \
    -e 's|%HOMETOPIC%|WebHome|g' \
    -e 's|%TWIKIWEB%|TWiki|g' \
    -e 's|%MAINWEB%|Main|g' \
    -e 's|%WIKITOOLNAME%|TWiki|g' \
    -e 's|%WIKIUSERNAME%||g' \
    -e 's|%WIKIPREFSTOPIC%|TWikiPreferences|g' \
    -e 's|%LOCALSITEPREFS%|TWikiPreferences|g' \
    -e 's|%SYSTEMWEB%|TWiki|g' \
    -e 's|%TOC%||g' \
    -e 's|%TOC\{[^}]*\}%||g' \
    -e 's|%TOPIC%||g' \
    -e 's|%SCRIPTURLPATH\{[^}]*\}%||g' \
    -e 's|%SCRIPTURL\{[^}]*\}%||g' \
    -e 's|%URLPARAM\{[^}]*\}%||g' \
    -e 's|%INCLUDE\{[^}]*\}%||g' \
    -e 's|%IF\{[^}]*\}%||g' \
    -e 's|%WEBTOPICLIST%||g' \
    -e 's|%SEARCH\{[^}]*\}%||g' \
    -e 's|%WEBPREFSTOPIC%|WebPreferences|g' \
    -e 's|<nop>||g'
}

strip_cosmetic_html() {
  # Remove cosmetic/styling span tags that cause escaped-HTML noise
  # Covers background-color, color, font-size style spans, WYSIWYG_COLOR class spans
  # Also strip target='_blank'/'_self' from <a> tags so pandoc can parse them as links
  "$SED" -E \
    -e "s|<span style=['\"][^'\"]*['\"]>||g" \
    -e 's|<span class="WYSIWYG_COLOR"[^>]*>||g' \
    -e "s|</span>||g" \
    -e "s| target=['\"]_blank['\"]||g" \
    -e "s| target=['\"]_self['\"]||g" \
    -e "s|<a href=['\"]([^'\"]+)['\"]>([^<]*)</a>|[[\1][\2]]|g"
}

ensure_table_blocks() {
  # Insert blank lines around HTML tables so pandoc treats them as block-level
  "$SED" -E \
    -e 's|(<table[^>]*>)|\n\n\1|gi' \
    -e 's|(</table>)|\1\n\n|gi'
}

fix_numbered_list() {
  # Fix TML reader issue were shorthand numbered list is put in paragraph
  # TWiki "   1 item" -> "   1. item"
  "$SED" -E 's/^([[:space:]]{3,})([0-9]+)[[:space:]]/\1\2. /'
}

# ---------- Conversion pipeline ----------

pandoc_tw_to_html_with_underscore_guard() {
  # https://github.com/jgm/pandoc/issues/6964
  # Pipeline to "neutralize" underscores before pandoc, then restore after.
  local topic="$1"
  local s1="iB2zC0y68yBU32B3Ox6xx6ko5CAop6rG5aU1pT6LG1Be10k65XEh6FVuD3dT3Gy2BJ6La"

  strip_meta \
    | strip_color_macros \
    | expand_attachurls "$topic" \
    | strip_system_macros \
    | strip_cosmetic_html \
    | ensure_table_blocks \
    | fix_numbered_list \
    | "$SED" -E "s/_/${s1}/g" \
    | run_with_timeout "twiki->html" pandoc -f twiki -t html --wrap=none --tab-stop=2 --markdown-headings=atx \
    | run_with_timeout "restore underscores" "$SED" -E "s/${s1}/_/g"
}

# ---------- Post-processing (on final .md output) ----------

post_process() {
  # All cleanup passes on the GFM markdown output

  # 0. Convert wikilinks with title="wikilink" that the Lua filter missed
  #    [text](target "wikilink") -> [text](target)   (no .md, GitHub wiki links)
  "$SED" -E 's|\]\(([^)"]+) "wikilink"\)|\](\1)|g' \
  | \
  # 1. Convert residual wikilink anchors to markdown links
  #    <a href="PageName" class="wikilink">Display</a> -> [Display](PageName)
  "$SED" -E 's|<a href="([^"]+)" class="wikilink">([^<]*)</a>|[\2](\1)|g' \
  | \
  # 1b. Strip .md from any internal link target left over from earlier passes
  #     ](X.md) and ](X.md#anchor), where X has no slash or colon (i.e. wiki page)
  "$SED" -E -e 's|\]\(([^):/]+)\.md\)|](\1)|g' -e 's|\]\(([^):/]+)\.md#|](\1#|g' \
  | \
  # 1d. Rename outbound WebHome page references to Home (GitHub wiki landing page)
  "$SED" -E 's|\]\(WebHome\)|](Home)|g; s|\]\(WebHome#|](Home#|g' \
  | \
  # 2. Flatten nested markdown links: [[text](url) more](outer) -> [text more](outer)
  "$SED" -E 's|\[\[([^]]+)\]\([^)]+\)([^]]*)\]\(([^)]+)\)|[\1\2](\3)|g' \
  | \
  # 2b. Strip escaped <a> tags (preserves inner content including markdown links)
  #    \<a href='...' target='...'\> -> (removed)
  #    \</a\> -> (removed)
  "$SED" -E -e 's|\\<a href=[^>]*\\>||g' -e 's|\\</a\\>||g' \
  | \
  # 3. Clean attribution lines and inline Main.User references
  #    -- Main.[Author](Author) -> -- Author
  #    -- Main.Author -> -- Author
  #    Main.[User](User) -> [User](User)   (anywhere in line)
  "$SED" -E \
    -e 's|^(-- )Main\.\[([^]]+)\]\([^)]+\)|\1\2|' \
    -e 's|^(-- )Main\.([A-Z][a-zA-Z]+)|\1\2|' \
    -e 's|Main\.\[([^]]+)\]\(([^)]+)\)|[\1](\2)|g' \
  | \
  # 5. Decode %20 in internal link targets (non-http) -- repeat to catch multi-%20
  "$SED" -E 's|\]\(([^)h][^)]*?)%20([^)]*)\)|\](\1 \2)|g' \
  | "$SED" -E 's|\]\(([^)h][^)]*?)%20([^)]*)\)|\](\1 \2)|g' \
  | "$SED" -E 's|\]\(([^)h][^)]*?)%20([^)]*)\)|\](\1 \2)|g' \
  | \
  # 6. Strip escaped numbered list periods: 1\. -> 1.
  "$SED" -E 's/^([0-9]+)\\\.( )/\1.\2/g' \
  | \
  # 7. Strip GRmark span IDs
  "$SED" -E 's|<span id="[^"]*GRmark[^"]*"[^>]*></span>||g' \
  | \
  # 8. Strip residual metadata lines and orphan <!-- --> markers
  "$AWK" '
    /^- TOPICINFO\{/ { next }
    /^- TOPICPARENT\{/ { next }
    /^- FILEATTACHMENT\{/ { next }
    /^<!-- -->$/ { next }
    { print }
  ' \
  | \
  # 9. Strip escaped \<nop\> markers
  "$SED" -E 's|\\<nop\\>||g' \
  | \
  # 10. Strip escaped <span> and </span> leftovers
  "$SED" -E \
    -e 's|\\<span[^>]*\\>||g' \
    -e 's|\\</span\\>||g' \
  | \
  # 11. Clean up escaped <form> blocks (TWiki search forms)
  "$SED" -E \
    -e 's|\\<form[^>]*\\>||g' \
    -e 's|\\</form\\>||g' \
    -e 's|\\<input[^>]*\\>||g' \
  | \
  # 12. Clean up remaining escaped <p>, </p>, <br /> tags
  "$SED" -E \
    -e 's|\\<p\\>||g' \
    -e 's|\\</p\\>||g' \
    -e 's|\\<br */\\>||g' \
  | \
  # 13. Strip trailing whitespace and collapse excessive blank lines
  "$SED" -E 's/[[:space:]]+$//' \
  | "$AWK" '
    /^$/ { blank++; if (blank <= 2) print; next }
    { blank = 0; print }
  '
}

# ---------- Post-conversion pass over all output files ----------

fix_space_targets() {
  # Some imported links use spaces in the target, e.g. [Call 2009-11-03](Call 2009-11-03)
  # where the actual file is Call2009-11-03.md. For each such link, try collapsing the
  # spaces (and any %20) in the target; if a matching .md file exists in $OUT_DIR,
  # rewrite. Leave the rest alone so the broken state is visible for cleanup.
  local md tmp
  log "Fixing 'spaces in target' links across $OUT_DIR/"
  for md in "$OUT_DIR"/*.md; do
    [[ -f "$md" ]] || continue
    tmp="$(mktemp)"

    "$AWK" -v out_dir="$OUT_DIR" '
    BEGIN {
      cmd = "ls -1 " out_dir
      while ((cmd | getline f) > 0) {
        sub(/\.md$/, "", f)
        pages[f] = 1
      }
      close(cmd)
    }
    {
      line = $0
      out = ""
      while (match(line, /\]\([^)]+\)/)) {
        before = substr(line, 1, RSTART - 1)
        link   = substr(line, RSTART, RLENGTH)
        rest   = substr(line, RSTART + RLENGTH)

        # Strip the surrounding "](" and ")"
        target = substr(link, 3, length(link) - 3)

        if (target ~ / / && target !~ /^https?:/ && target !~ /^\// && target !~ /\//) {
          collapsed = target
          gsub(/ /,    "", collapsed)
          gsub(/%20/,  "", collapsed)
          if (collapsed in pages) {
            link = "](" collapsed ")"
          }
        }

        out = out before link
        line = rest
      }
      print out line
    }
    ' "$md" > "$tmp"

    if ! cmp -s "$md" "$tmp"; then
      mv "$tmp" "$md"
    else
      rm -f "$tmp"
    fi
  done
}

# ---------- Main ----------
main() {
  need_cmd git
  need_cmd pandoc
  need_cmd timeout

  [[ -d "$SRC_DIR" ]] || die "Source directory not found: $SRC_DIR"
  [[ -f "$LUA_FILTER" ]] || die "Lua filter not found: $LUA_FILTER"

  mkdir -p "$UTF8_DIR" "$HTML_DIR" "$OUT_DIR"

  # Convert every .txt under Source/, excluding RCS ,v files
  while IFS= read -r -d '' src; do
    local base topic utf8 html outmd
    base="$(basename "$src")"
    topic="$(basename "$base" .txt)"
    utf8="$UTF8_DIR/$base"
    html="$HTML_DIR/${base}.html"

    # GitHub Wiki uses Home.md as the landing page; emit WebHome.txt there.
    if [[ "$topic" == "WebHome" ]]; then
      outmd="$OUT_DIR/Home.md"
    else
      outmd="$OUT_DIR/${topic}.md"
    fi

    # Skip system pages
    if echo "$SKIP_PAGES" | grep -qw "$topic"; then
      log "Skipping system page: $base"
      continue
    fi

    log "Doing $base"

    convert_to_utf8 "$src" "$utf8"

    pandoc_tw_to_html_with_underscore_guard "$topic" <"$utf8" >"$html"

    if [[ -s "$html" ]]; then
      run_with_timeout "$base (html->gfm)" pandoc \
        -f html -t gfm+pipe_tables+raw_html \
        --wrap=none \
        --lua-filter="$LUA_FILTER" \
        --tab-stop=2 \
        --markdown-headings=atx \
        <"$html" \
      | post_process >"$outmd"
    else
      log "WARN: empty HTML produced for $base: $html"
    fi
  done < <(find "$SRC_DIR" -type f -name '*.txt' ! -name '*,v' -print0)

  fix_space_targets

  log "Done. Markdown output is in: $OUT_DIR/"
}

main "$@"
