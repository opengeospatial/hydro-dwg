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
