#!/usr/bin/env bash

### Create an empty orphan `wiki-docs` branch on the target repo. The branch
### holds only a README and is the destination for **new** non-image attachments
### added to the wiki from this point forward. Legacy attachments stay in the
### companion repo opengeospatial/hydro-dwg-wiki-docs.
###
### Usage:
###   scripts/seed-wiki-docs-branch.sh <target-repo-url>
###
### Example (canonical, after repo rename):
###   scripts/seed-wiki-docs-branch.sh git@github.com:opengeospatial/hydro-dwg.git
###
### Behavior:
###   - Clones the target repo into a temp dir
###   - Creates the orphan branch (empty) with only a README
###   - Pushes
###   - Refuses if the remote branch already exists (delete it on GitHub first)
###
### Pass DRY_RUN=1 to do everything except the final push.

set -Eeuo pipefail
IFS=$'\n\t'

BRANCH="${BRANCH:-wiki-docs}"
DRY_RUN="${DRY_RUN:-0}"

log() { printf '%s\n' "$*" >&2; }
die() { log "ERROR: $*"; exit 1; }

[[ $# -eq 1 ]] || die "Usage: $0 <target-repo-url>"
TARGET_URL="$1"

command -v git >/dev/null 2>&1 || die "git is required"

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

log "Target repo: $TARGET_URL"
log "Branch:      $BRANCH"
[[ "$DRY_RUN" == "1" ]] && log "DRY_RUN=1 — will not push."

log "Cloning target repo..."
git clone "$TARGET_URL" "$work/target"

cd "$work/target"

if git ls-remote --exit-code --heads origin "$BRANCH" >/dev/null 2>&1; then
  die "Branch '$BRANCH' already exists on $TARGET_URL. Delete it on GitHub first if you intend to reseed."
fi

log "Creating empty orphan branch '$BRANCH'..."
git checkout --orphan "$BRANCH"
git rm -rf --quiet . 2>/dev/null || true
find . -mindepth 1 -maxdepth 1 ! -name '.git' -exec rm -rf {} +

cat > README.md <<'EOF'
# wiki-docs (orphan branch)

This orphan branch is the destination for **new** non-image binary
attachments (PDFs, presentations, schemas, etc.) referenced by pages on the
project wiki. Files are organized into one folder per wiki page name.

**Legacy attachments are not here.** The ~1.4 GB of binaries imported from
the original TWiki stay in the companion repo
[opengeospatial/hydro-dwg-wiki-docs](https://github.com/opengeospatial/hydro-dwg-wiki-docs),
where the existing wiki links already point. Please do not add new files
there — use this branch instead.

## Linking from a wiki page

Wiki pages reference files here via raw URLs of the form:

```
https://raw.githubusercontent.com/opengeospatial/hydro-dwg/wiki-docs/{TopicFolder}/{filename}
```

## Adding new attachments

From the GitHub web UI: navigate to a topic folder (or create one), click
**Add file → Upload files**, drag the file in, commit. No PR required for
collaborators with write access.

From a clone:

```
git clone --single-branch -b wiki-docs https://github.com/opengeospatial/hydro-dwg.git wiki-docs
cd wiki-docs
# add files, commit, push
```

## Why an orphan branch

`wiki-docs` shares no git history with `main`. This keeps binaries out of
the main branch's clone size, lets us upload non-image files via the web
UI (which the wiki editor does not support), and keeps everything related
to the wiki inside one GitHub repository.

See the [Contributing](https://github.com/opengeospatial/hydro-dwg/wiki/Contributing)
page on the wiki for the full workflow.
EOF

log "Staging and committing..."
git add -A
git -c user.name="hydro-dwg seed" -c user.email="noreply@example.com" \
    commit -m "Seed empty wiki-docs branch for new non-image attachments"

if [[ "$DRY_RUN" == "1" ]]; then
  log "DRY_RUN: skipping push. Branch would have been:"
  git log --oneline -1
  exit 0
fi

log "Pushing $BRANCH to origin..."
git push -u origin "$BRANCH"

log "Done. The branch is now ready for contributors to upload new attachments."
