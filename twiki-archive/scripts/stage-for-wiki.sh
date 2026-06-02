#!/usr/bin/env bash

### Stage markdown/ and wiki/ into a clone of the target repo's GitHub Wiki
### and push.
###
### Usage:
###   scripts/stage-for-wiki.sh <wiki-repo-url>
###
### Example (fork):
###   scripts/stage-for-wiki.sh git@github.com:dblodgett-usgs/hydro-dwg.wiki.git
###
### Example (canonical):
###   scripts/stage-for-wiki.sh git@github.com:opengeospatial/hydro-dwg.wiki.git
###
### What it does:
###   1. Clones the wiki repo into a temp dir.
###   2. Removes existing .md files in the wiki (clean slate; git history is kept).
###   3. Copies every markdown/*.md into the wiki root.
###      The auto-generated Home.md from the converter is included here.
###   4. Copies wiki/*.md into the wiki root, OVERWRITING the auto-generated
###      Home.md with the hand-authored version (and adding Contributing.md).
###   5. Commits and pushes.
###
### Prerequisites:
###   - The wiki must be initialized once via the GitHub UI (create any page)
###     before its .wiki.git is clonable.
###   - markdown/ must be up to date — run scripts/convert-twiki2md.sh first.

set -Eeuo pipefail
IFS=$'\n\t'

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
PROJECT_ROOT="$(cd -- "$SCRIPT_DIR/.." &>/dev/null && pwd)"
MD_DIR="${MD_DIR:-$PROJECT_ROOT/markdown}"
WIKI_DIR="${WIKI_DIR:-$PROJECT_ROOT/wiki}"

log() { printf '%s\n' "$*" >&2; }
die() { log "ERROR: $*"; exit 1; }

[[ $# -eq 1 ]] || die "Usage: $0 <wiki-repo-url>"
WIKI_URL="$1"

command -v git >/dev/null 2>&1 || die "git is required"
[[ -d "$MD_DIR" ]] || die "Missing markdown directory: $MD_DIR"

# The wiki/ directory holds hand-authored pages (Home, Contributing) that
# override or supplement the converter output. Allowed to be empty.
if [[ ! -d "$WIKI_DIR" ]]; then
  log "Note: $WIKI_DIR not present; only converter output will be staged."
fi

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

log "Cloning wiki repo: $WIKI_URL"
git clone "$WIKI_URL" "$work/wiki" 2>&1 \
  || die "Failed to clone $WIKI_URL. Has the wiki been initialized? Create any page via the GitHub UI first."

cd "$work/wiki"

log "Clearing existing .md files in the wiki..."
find . -maxdepth 1 -type f -name '*.md' -delete

log "Copying converter output from $MD_DIR/..."
cp "$MD_DIR"/*.md ./

if [[ -d "$WIKI_DIR" ]]; then
  log "Overlaying hand-authored pages from $WIKI_DIR/..."
  shopt -s nullglob
  for f in "$WIKI_DIR"/*.md; do
    cp "$f" ./
  done
  shopt -u nullglob
fi

# Source commit for traceability in the wiki commit message.
src_commit="$(cd "$PROJECT_ROOT" && git rev-parse --short HEAD 2>/dev/null || echo unknown)"

log "Staging..."
git add -A

if git diff --cached --quiet; then
  log "No changes to commit. Wiki is already in sync."
  exit 0
fi

log "Committing..."
git -c user.name="hydro-dwg stage" -c user.email="noreply@example.com" \
    commit -m "Stage wiki from converter ${src_commit}"

log "Pushing to origin..."
git push

log "Done."
