# AI-use log

Running record for the thesis GenAI declaration (UoC *Policy on the Use of Generative AI*, Part I).

| Date | Tool / version | Purpose | Input type |
|---|---|---|---|
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Built Typst thesis layout template (`typst/thesis-template.typ`, `typst/thesis.typ`) reproducing the formatting of the candidate's own MPhil thesis (2022). Formatting only; all prose slots are empty placeholders for the candidate. APA 7 style from the `versatile-apa` Typst package. | Candidate's MPhil thesis PDF (layout measured: margins, fonts, spacing, headings); signed proposal metadata from `typst/meta.typ` |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Thesis template: margins set to L 40mm / R 15mm / T,B 30mm and 1.5 line spacing, as instructed by the candidate. Formatting only. | Candidate instruction |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Thesis template: degree abbreviations standardised to undotted form (BSc, MPhil, PhD); front-matter fields moved to `meta.typ` (`thesis-info`). Formatting only. | Candidate instruction |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Thesis outline: chapter and section headings for Ch1–8 and appendices, guidance boxes naming what each section must cover (drawn from the signed proposal and `analysis.typ` consistency review), objective trace tags, empty table/figure skeletons. No prose drafted; no data or numbers entered. | Signed proposal (via `typst/chapters/*`, `meta.typ`), `analysis.typ` |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Thesis outline restructured to five chapters as instructed by the candidate: Phase 1–3 results and discussion merged into Chapter 4; conclusions moved to Chapter 5. Headings and guidance boxes only. | Candidate instruction |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Retargeted thesis outline guidance and review notes to G.C.E. O/L (grades 10–11) teachers, as instructed by the candidate. | Candidate instruction |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Updated CLAUDE.md with thesis layout rules, five-chapter structure, O/L population, abbreviation style, open items and tooling notes from this session. | Session findings and candidate instructions |
| 2026-09-25 | Claude Code (Claude Opus 5.5) | Typeset the candidate's own Chapter 1 and 2 drafts (received as Word PDFs) into the thesis template, verbatim; verified by word-level diff. Formatting only; no wording changed. | Candidate-written chapter drafts |
