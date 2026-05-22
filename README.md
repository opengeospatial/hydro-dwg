# HydrologyDWG Wiki

Archive of the OGC Hydrology Domain Working Group wiki, imported 2025-12-17 from
https://external.ogc.org/twiki_public/HydrologyDWG/

Wiki contents: https://github.com/opengeospatial/hydro-dwg-wiki
Attachments: https://github.com/opengeospatial/hydro-dwg-wiki-docs

## Project Structure

```
Source2025/    - Original TWiki TML source files (.txt), 344 files
markdown/     - Converted GFM Markdown files (.md), 344 files
scripts/      - Conversion tooling
  convert-twiki2md.sh  - Main conversion script (TWiki TML -> UTF-8 -> HTML -> GFM)
  force-fences.lua     - Pandoc Lua filter to force fenced code blocks
  pandoc               - Pandoc binary (vendored)
```

## Conversion Pipeline

Source files are converted from TWiki TML to GitHub-Flavored Markdown using a
multi-stage pipeline in `scripts/convert-twiki2md.sh`:

1. **UTF-8 normalization** - Detect and convert source encoding (WINDOWS-1252,
   ISO-8859-1, etc.) to UTF-8 via `iconv`
2. **TML pre-processing** - Fix numbered lists, neutralize underscores
   (workaround for [pandoc#6964](https://github.com/jgm/pandoc/issues/6964)),
   move `%META:` blocks to end of file
3. **TWiki -> HTML** - `pandoc -f twiki -t html`
4. **HTML -> GFM** - `pandoc -f html -t gfm+pipe_tables+raw_html` with
   `force-fences.lua` filter

Requirements: `pandoc` (3.8+), `iconv`, `file`, `sed`/`gsed`, `awk`/`gawk`,
`timeout`, `git`

## Content Overview

The markdown files contain OGC Hydrology DWG meeting notes, technical
discussions, workshop records, and standards development documentation spanning
2008-2021. Key topic areas include:

- **WaterML** standards (timeseries, ratings, gaugings)
- **HY_Features** (surface hydrology conceptual model)
- **GroundwaterML (GWML2)** development and IE meetings
- **WaterML2 Interoperability Experiments**
- OGC Technical Committee meeting notes
- Workshop proceedings (Delft, Koblenz, Tuscaloosa, etc.)

The main landing page content is in `markdown/WebHome.md`.

## Conventions

- Source files in `Source2025/` should not be modified; they are the archival record
- The `markdown/` directory contains the converted output and may be edited for cleanup
- Intermediate `html/` and `utf8/` directories are generated during conversion and gitignored
- RCS version files (`*,v`), `.changes`, `.mailnotify`, and `.lease` files are gitignored
