# twiki-archive

Snapshot of the one-time import that seeded the HydroDWG wiki in May 2026.

- `Source2025/` — the original TWiki TML source files, immutable archive of the pre-migration wiki content.
- `scripts/` — the conversion pipeline (`convert-twiki2md.sh`, `force-fences.lua`, vendored `pandoc`) and the deployment scripts (`seed-wiki-docs-branch.sh`, `stage-for-wiki.sh`) used to populate the GitHub wiki and the `wiki-docs` orphan branch.

These are kept for reproducibility. The live content is on the wiki — see the main `README.md`.

Re-running the conversion (rare): the scripts compute paths relative to themselves, so they still work from this location. Output goes to `twiki-archive/markdown/`, which is gitignored — copy or re-stage from there if needed.
