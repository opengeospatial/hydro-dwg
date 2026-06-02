# Contributing to the HydroDWG wiki

This page covers everything beyond the short summary on the [Home](Home) page: where things live, how to add and edit them, the conventions to follow, and the known rough edges from legacy content imported from a previous wiki.

## How the wiki is laid out

The HydroDWG content spans four places:

- **The wiki itself** — `https://github.com/opengeospatial/hydro-dwg/wiki`. Backed by a separate git repo at `hydro-dwg.wiki.git` that GitHub provisions automatically. Holds the markdown pages you read and edit.
- **The main repo, `main` branch** — `https://github.com/opengeospatial/hydro-dwg`. Holds the original TWiki source under `Source2025/`, the converted markdown under `markdown/`, and the conversion scripts under `scripts/`. This is the source of truth for the imported content.
- **The companion repo `hydro-dwg-wiki-docs`** — `https://github.com/opengeospatial/hydro-dwg-wiki-docs`. Holds the ~1.4 GB of legacy binary attachments (PDFs, presentation decks, schemas, images) that were uploaded to the original TWiki. Read-only as far as new contributions are concerned — kept where it is so the existing wiki links keep working without rewriting 300+ URLs.
- **The main repo, `wiki-docs` orphan branch** — `https://github.com/opengeospatial/hydro-dwg/tree/wiki-docs`. Initially empty. This is where **new** non-image attachments go. Orphan means the branch shares no git history with `main` — it is a parallel root in the same repo, so cloning `main` does not pull these binaries.

The split is deliberate: the legacy content was already organized and linked in the docs repo, and bulk-moving 1.4 GB into the main repo would force every existing wiki link to be rewritten with no real upside. New content gets the cleaner single-repo workflow.

## Editing existing pages

Click **Edit** on any wiki page, change the markdown, and save. GitHub commits to the wiki repo on your behalf. No clone, no PR.

If you want to make many edits at once, or use a real editor, clone the wiki repo:

```
git clone https://github.com/opengeospatial/hydro-dwg.wiki.git
```

Each page is one `.md` file at the root of the wiki repo. Edit, commit, push.

## Adding a new page

From the wiki web UI: click **New Page** in the sidebar, give it a name, write markdown, save.

From a clone: drop a new `.md` file at the root of the wiki repo. The filename (minus `.md`) becomes the page slug.

### Page naming

- Spaces in a filename become hyphens in the URL. `My New Page.md` and `My-New-Page.md` both resolve to `…/wiki/My-New-Page`.
- Most imported pages use CamelCase (`GWML2-UML-Model`, `WorkshopTuscaloosa2017`) inherited from the original TWiki. New pages can follow any naming style; spaces-or-hyphens is fine.
- Page lookup is case-insensitive, but the canonical URL uses the case of the file as committed.

### Linking between pages

Use plain markdown with **no** `.md` extension:

```markdown
[See the GWML2 UML model](GWML2-UML-Model)
```

A link with `.md` redirects to the raw markdown source instead of the rendered page — that is a GitHub Wiki quirk, not something we can fix in the wiki itself.

## Attaching images to a page

In the page editor, drag the image into the text area. GitHub uploads it automatically to the wiki repo at `uploads/<hash>/<filename>` and inserts the markdown for you. This works for PNG, JPEG, and GIF.

The auto-uploaded images live inside the wiki repo, not on the `wiki-docs` branch. That is unavoidable — there is no GitHub web UI that uploads directly to a non-wiki branch from inside the wiki editor.

## Attaching PDFs, presentations, schemas, or other non-image files

GitHub's wiki editor does not support uploading non-image files. **New** non-image attachments go on the `wiki-docs` orphan branch of the main repo. The existing legacy attachments in [`hydro-dwg-wiki-docs`](https://github.com/opengeospatial/hydro-dwg-wiki-docs) are not being moved; please don't add new files there.

1. Go to <https://github.com/opengeospatial/hydro-dwg> and switch the branch dropdown (top-left of the file listing) to `wiki-docs`.
2. Navigate into the topic folder for the page you are working on, or create a new folder if one does not exist. Folder names usually match the wiki page name.
3. Click **Add file → Upload files**, drag your file in, and commit directly to `wiki-docs`. No PR needed — the branch is intentionally configured to allow direct push from collaborators.
4. In the wiki page, link to the file using the raw URL:

   ```
   https://raw.githubusercontent.com/opengeospatial/hydro-dwg/wiki-docs/{TopicFolder}/{filename}
   ```

For bulk uploads (many files at once, across many folders), clone the branch and push from your terminal:

```
git clone --single-branch -b wiki-docs https://github.com/opengeospatial/hydro-dwg.git wiki-docs
cd wiki-docs
# add files, commit, push
```

### Why an orphan branch (and not the docs repo)

For new content we want:

- Any file type uploadable through the GitHub web UI (the wiki editor only supports images).
- A single repository for everything new — wiki, source markdown, and new binaries — so contributors don't have to know about a second repo.
- No bloat on `main` (cloning the source/scripts should stay fast).

An orphan branch in the main repo gives all of those at once. It is the same pattern used by GitHub Pages' historical `gh-pages` branch.

The legacy `hydro-dwg-wiki-docs` repo stays where it is because moving 1.4 GB of presentation decks would force rewriting every existing wiki link, with no real benefit — the URLs already work, and the content is stable.

## Reporting issues with imported content

The TWiki → markdown conversion is imperfect. Common issues you may notice:

- **Internal links that point to a "Create new page" prompt.** The source TWiki had many CamelCase references to pages that were never created. Roughly 570 such targets are missing from the import.
- **Links with literal spaces in the URL.** A handful of imported links use spaces where the actual filename is CamelCase. Example: `[Call 2009-11-03](Call 2009-11-03)` should be `[Call 2009-11-03](Call2009-11-03)`. Edit the page and fix the link target.
- **Embedded HTML that did not render cleanly.** A few pages contain leftover `<a>` or `<span>` fragments that the converter could not flatten. Editing the page to remove the stray tags is safe.
- **References to pages on the original TWiki server** (`external.ogc.org/twiki_public/HydrologyDWG/...`). About a dozen pages were never imported — those links point off-site. If you want to bring a page in, copy its content into a new wiki page and update the link.

To report something, open an issue on the [main repo](https://github.com/opengeospatial/hydro-dwg/issues).

## Regenerating the wiki from source (DONE RARELY IF EVER)

The conversion scripts live in `scripts/` on the main repo. To regenerate:

```
cd hydro-dwg
scripts/convert-twiki2md.sh
```

This rewrites `markdown/` from `Source2025/`. A separate script, `scripts/stage-for-wiki.sh`, pushes the updated `markdown/` into the wiki repo.

If you change the contents of `Source2025/` or the conversion scripts, run both. If you only edited a wiki page through the web UI, the change is already live and no regeneration is needed.
