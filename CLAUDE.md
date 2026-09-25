# Project: PhD Research — Problem-Solving Competency of Senior Secondary Mathematics Teachers (Sri Lanka)

This project is **academic research, not software**. The global CLAUDE.md (Go/Python/Svelte
stack, `go vet`, `pnpm check`, etc.) does **not** apply here. Follow this file instead.

## The study

| Field | Value |
|---|---|
| Title | Enhancing the competency of using problem solving strategy in mathematics among senior secondary teachers in Sri Lanka |
| Candidate | Navarajah Prashanthan (PhD, part-time), index `2023/Phd/PT/003` |
| Institution | Faculty of Education, University of Colombo |
| Supervisor | Dr. D.V.K.P. Seneviratne, Head, Dept. of Science & Technology Education |
| Proposal signed | 23.01.2025 |
| Planned period | Jan 2025 – May 2026 (17 months) |
| Design | Multi-phase mixed methods: Phase 1 quantitative survey → Phase 2 qualitative exploration → Phase 3 experimental/action intervention → teacher education module |
| Population | Senior secondary (G.C.E. O/L, grades 10–11) mathematics teachers, Sri Lanka — confirmed by the candidate 2026-09-25; A/L is out of scope |

"Senior secondary" in this study always means **G.C.E. O/L, grades 10–11**. Never reintroduce A/L
(grades 12–13) into the thesis, instruments or sampling. The proposal's Participants section says only
"secondary school mathematics teachers"; the thesis must say O/L explicitly.

### Research objectives (verbatim, numbered I–VI)
1. Identify the current level of cognitive abilities of secondary mathematics teachers regarding problem-solving strategies.
2. Explore the level of use of problem solving strategies in mathematics by senior secondary teachers.
3. Find out areas for improvement in problem-solving strategy among senior secondary teachers.
4. Design and implement an intervention to enhance teachers’ competency in applying problem-solving strategies in mathematics.
5. Assess the progress of use of problem-solving strategies in mathematics after intervention.
6. Propose a teacher education module on effective use of problem solving strategies in mathematics in senior secondary education.

Objective → phase map: Phase 1 → I, II · Phase 2 → I, II, III (both stated in the source) · Phase 3 → IV, V, VI (inferred).

### Known open issues in the signed proposal
These are listed in full in `typst/analysis.typ` § Consistency review. Keep them in mind in all later work:
- The proposal gives four sample sizes (45 / 150 / 30 / 20) and three sampling schemes (stratified / purposive / convenience).
- The construct drifts: objectives are about problem-solving competency, but the framework and methods focus on attitudes and beliefs (TPB, self-efficacy).
- §4.1 contains carried-over text about “self-learning … G.C.E A/L” from another study (the study targets O/L only).
- Phase 3 has no control group, pre/post instrument or intervention specification. Objective VI has no method.
- Six in-text citations are missing from the reference list (ICMI 2016, NEC 2018, NIE 2019, DOE 2018, Vygotsky 1978, Lesh et al. 2019).

## Repository layout

```
.
├── Research proposal _ Navarajah Prasanthan_Signed.pdf   # SOURCE OF TRUTH — never modify (MISSING from repo, see below)
├── complete thesis final draft print.pdf   # Candidate's 2022 MPhil thesis — layout model only; never modify or stage
├── CLAUDE.md
├── ai-use-log.md         # GenAI use log (UoC policy); append a row with every AI-assisted commit
├── drafts/YYYY-MM-DD/    # Candidate's own chapter drafts (Word PDFs) as received — never modify
└── typst/
    ├── main.typ          # Faithful reconstruction of the signed proposal
    ├── analysis.typ      # Structured extraction + consistency review
    ├── template.typ      # Shared styling (`proposal` show rule, phase-box, ref-entry)
    ├── meta.typ          # Single source of structured data (objectives, phases, timeline, references)
    ├── chapters/         # One file per proposal section, included by main.typ
    ├── thesis.typ        # PhD thesis entry point (front matter, chapters, refs, appendices)
    ├── thesis-template.typ  # Thesis layout, modelled on the candidate's MPhil thesis PDF
    └── thesis/           # Thesis chapters (ch1–ch5), abstract, appendices, references.bib, apa.csl
```

**Missing source (as of 2026-09-25):** the signed proposal PDF is not in the repo; only its transcription
(`main.typ`, `chapters/*`, `meta.typ`) and the rebuilt `proposal.pdf` exist. `proposal.pdf` is *our*
rebuild, not the source. Ask the candidate to restore the signed PDF before any new extraction from it.

**MPhil PDF:** it has shown as modified on disk without Claude writing to it (likely a PDF viewer).
Never stage it; if `git status` lists it, tell the candidate rather than committing or reverting it.

Add new research outputs as new Typst files under `typst/` (e.g. `typst/chapters/ch1-*.typ`, `typst/instruments/*.typ`).
Put raw data under `data/` and analysis scripts under `analysis/`. Create these only when needed.

## PhD thesis (`typst/thesis.typ`)

### Layout — candidate's instructions (binding)
- A4. Margins **L 40mm (binding), R 15mm, T 30mm, B 30mm**.
- Times New Roman 12pt, justified, **1.5 line spacing** = 20.7pt baseline pitch (1.5 × 1.15em single line).
  If fonts or sizes change, recompute `leading` in `thesis-template.typ` and re-measure.
- Page number top-centre. Cover unnumbered; inner title page = I (not printed); Roman capitals through
  the front matter; Arabic from Chapter 1.
- Front matter order (from the MPhil): cover → inner title → Declaration → Acknowledgements → Abstract
  → Table of Contents → List of Tables → List of Figures → List of Abbreviations.
- Chapter opening: "CHAPTER N" + title in capitals, centred, new page. Sections 1.1 / 1.1.1 / 1.1.1.1 bold.
- Tables captioned **above**, figures **below**, numbered per chapter (Table 4.3, Figure 1.1). Captions stick
  to their tables.
- Appendices: "APPENDICES" divider, then `= Title` renders "Appendix-N: Title".
- References: APA 7 via the `versatile-apa` 7.2.0 CSL, vendored as `thesis/apa.csl`, with a 0.5in
  hanging indent. Do **not** apply the package's `versatile-apa` show rule: it forces US Letter,
  double spacing and APA student-paper headings. Only `apa-figure` (table/figure notes) is imported,
  so the first build needs network access to fetch the package.
- Degree abbreviations are **undotted British form**: BSc, BEd, MSc, MPhil, PhD. Full name on title pages:
  DOCTOR OF PHILOSOPHY. (The proposal's "P.hd" / "Phd" stay only in the verbatim transcription and the
  index number.)

### Structure — five chapters (candidate's decision, matches the MPhil)
| File | Chapter | Objectives |
|---|---|---|
| `ch1-introduction.typ` | 1 Introduction | I–VI |
| `ch2-literature-review.typ` | 2 Literature Review | I–VI |
| `ch3-methodology.typ` | 3 Methodology (Phases 1–3, module development, integration, translation, ethics) | I–VI |
| `ch4-results-discussion.typ` | 4 Results and Discussion: 4.2 Phase 1, 4.3 Phase 2, 4.4 Phase 3 + module, 4.5 Discussion | I–VI |
| `ch5-conclusion.typ` | 5 Conclusions and Recommendations | I–VI |

All phase results **and** all discussion belong in Chapter 4. Do not split them into separate chapters.

### Data and helpers
- Thesis front-matter facts (degree, short degree, year, qualifications, short author name) live in
  `meta.typ` → `thesis-info`. Never hard-code them in chapter files.
- `thesis-template.typ` helpers: `todo[...]` (guidance box), `traces(1, 2)` (objective tag), `table-skeleton`
  (headers + "—" cells), `figure-placeholder`, `apa-figure`, `front-heading`, `front-matter`, `main-matter`,
  `appendices`.
- **Candidate drafts** (`drafts/…/chapterN.pdf`) are transcribed into `thesis/chN-*.typ` **verbatim**:
  keep wording, spelling (incl. American forms), numbering order and list markers; only convert to
  Typst formatting. Verify with a word-level diff of `pdftotext` source vs. rebuilt `thesis.pdf`
  (expect only line-break hyphen artifacts). Escape straight apostrophes (`\'`) where the source has
  them. Record content issues for the candidate; never fix them silently. Ch1–2 received 2026-09-25.
- Guidance boxes say *what* a section must cover and cite the proposal section. They are never prose.
  Replace a `todo` only with text the candidate wrote.
- Skeleton tables stay "—" until real, anonymised data exists. Never enter example or plausible numbers.

### References
- `thesis/references.bib` holds the candidate's 21 proposal sources, checked online 2026-09-25;
  status and corrections are in `thesis/references-audit.md` (also lists claims in Ch1–2 that need
  citations). Keep a `% VERIFIED / CORRECTED / UNVERIFIED` comment above every entry.
- Type reports as `@book` with `publisher` and theses with `publisher` = university (otherwise the
  CSL drops the institution); article numbers as `pages = {Article 012005}`.
- Never add given names, DOIs or pages from memory — only from a checked record.
- Never insert citations into the candidate's text; the candidate chooses where to cite.

### Open items (update when resolved)
- `thesis-info.year` = "2027" and `qualifications` are marked `[CONFIRM]`.
- `thesis.typ` → `list-uncited-references = true` (draft). Set to `false` before submission.
- Four grey-literature references (DOE 2019, MOE 2018, NIE 2009, Kalamani 2009) are UNVERIFIED.
- Official UoC degree title ("Doctor of Philosophy" vs "… in Education") not yet verified against the
  FoE by-laws / FGS handbook.
- Phase 3 → Objectives IV–VI is inferred; candidate to confirm.
- Cosmetic: title wraps leaving "LANKA" alone on the last line (needs manual line breaks); Typst
  hyphenates justified text, which the MPhil (WPS Writer) did not.
- The Declaration wording is copied from the MPhil; check it against current FoE PhD rules.

## Commands

```bash
cd typst
typst compile main.typ proposal.pdf        # rebuild proposal
typst compile analysis.typ analysis.pdf    # rebuild review
typst compile thesis.typ thesis.pdf        # rebuild thesis
typst watch analysis.typ                   # live rebuild while editing
typst compile main.typ "/tmp/p-{p}.png" --ppi 60   # per-page PNGs for visual check
pdftotext -bbox -f N -l N thesis.pdf -              # word boxes in pt: measure margins (÷2.8346 = mm) and line pitch
```

Typst version: 0.15.x. Fonts: Times New Roman (fallback Libertinus Serif).

Verify layout changes by measurement, not by eye: compile a scratch copy of `thesis.typ` that includes a
test chapter (`#lorem`, a table, a figure, a citation) and check word positions with `pdftotext -bbox`.
Put scratch files in the session scratchpad or delete them; never commit them.

**Shell gotchas (this machine):** `rm` is aliased to interactive `rm -i` and will hang a non-interactive
command — use `\rm -f`. zsh errors on unmatched globs (`no matches found`), so guard `ls *.png` style
commands. Wrap long compiles in `timeout 60`.

## Working rules

### Source fidelity
- `main.typ` and `chapters/*` are a **verbatim transcription**. Do not correct typos or wording there. Record them in `analysis.typ`.
- If a revised proposal is wanted, create `typst/revised/` rather than editing the transcription.
- Structured facts (objectives, phases, timeline, references, people) live **only** in `meta.typ`. Import them. Never retype them.
- When extracting from a PDF, read it with `Read` using `pages:` ranges. The proposal has 14 pages, so use two reads. Tables and diagrams are images, so check them visually. For long PDFs (the MPhil has 196 pages) use `pdftotext -layout -f A -l B` for text and `pdftoppm -r 50` page renders for layout.

### Research and analysis
- **Never fabricate** citations, DOIs, page numbers, statistics or quotes. When a source cannot be verified, mark it `[UNVERIFIED]` and state what needs checking.
- For literature searches, use WebSearch/WebFetch. Record the full APA 7 reference plus the DOI/URL for every source used. Prefer peer-reviewed journals (e.g. ESM, JRME, ZDM, JMTE, IEJME) and official Sri Lankan sources (NIE, MOE, NEC, Department of Examinations).
- Separate **what the source says** from **your inference**. Label inferences explicitly (as in the Phase 3 → IV–VI mapping).
- Critique is for revision, not verdicts. Phrase issues as “X is inconsistent with Y; option: Z”.
- Check every new chapter or instrument against the objectives I–VI. Each item should trace to at least one objective (mark thesis sections with `#traces(...)`).
- When the candidate states a fact about the study (population, structure, style), record it here and fix every place that contradicts it, including `analysis.typ`. Past error to avoid: the review once called O/L the "junior" examination; in this study O/L grades 10–11 are senior secondary.
- Methodology suggestions must be feasible for a part-time PhD in Sri Lankan schools: zonal education offices, ethics clearance from the UoC Faculty of Education, and trilingual contexts (Sinhala/Tamil/English instruments may need translation and back-translation).

### Methodological defaults (suggest, don't impose)
- Resolve sampling to one frame per phase, and state N with a justification (a power analysis for regression; roughly 5–10 respondents per item for factor analysis).
- Frame problem-solving around Pólya’s four stages, Schoenfeld’s framework, or NCTM (2000) process standards. For competency, consider MKT (Ball, Thames & Phelps, 2008). Verify every citation before use.
- Instruments: pilot them, then report content validity (expert panel, CVI), reliability (Cronbach’s α ≥ .70), and EFA/CFA where N allows.
- Phase 3: quasi-experimental pre/post design, with a comparison group if feasible. Specify the intervention’s duration, content and fidelity checks.
- Qualitative work: Braun & Clarke reflexive thematic analysis, with NVivo in place of the legacy QSR N6.
- Quantitative work: R or Python (`uv run`, pandas, statsmodels, factor_analyzer). Keep analysis scripts reproducible and never overwrite raw data.

### Writing
- APA 7 for citations and references. Order the reference list alphabetically.
- Use British/Sri Lankan English spelling, matching the source (“programmes”, “analyse”).
- Put figures and tables in Typst `figure(...)` with captions. Build Gantt charts from `meta.typ` timeline data.

### University of Colombo GenAI policy (binding on all AI help here)
Source: *Policy on the Use of Generative AI in Academic and Administrative Activities*, UoC
(https://edu.cmb.ac.lk/wp-content/uploads/2026/07/AI-Policy.pdf). Part I governs students.
- **Never write a first draft** of thesis, proposal or chapter prose. Under the policy an AI first draft is plagiarism even when acknowledged. The candidate drafts first; Claude may then give feedback, restructure, check consistency, or edit language.
- **Never interpret statistical output.** Claude may run computations, but interpreting the results is the candidate's work.
- **References:** Claude may only format citations for sources the candidate has actually read. Never suggest a source as citable until the candidate has accessed it. Fabricated or hallucinated references count as misconduct.
- **No "humanising" or paraphrasing to hide AI output.**
- **Uses that need acknowledgement:** statistics and computation, language editing, fact-finding, summarising documents already read, outlines, brainstorming the candidate's own ideas, translation, and polishing figures. Keep a running log in `ai-use-log.md` (date, tool and version, purpose, prompt or input type). This feeds the declaration in the Acknowledgements; the thesis declaration also covers AI-developed material.
- **Never upload confidential or identifiable data** (participant responses, transcripts, school records) to any AI tool, including this session. Work only on anonymised or aggregate data.
- **Keep paper evidence of data collection** (field reports, transcripts, forms) until results are released.

### Ethics and privacy
- Teacher, school and zone data is confidential. Never commit identifiable participant data. Use pseudonyms (T01, S01, Z01).
- Keep consent forms and ethics documents out of any public artifact.
- Do not publish or share documents externally unless explicitly asked.

## Git workflow — commit after every completed step

The repo is local (no remote), and all work is committed on `main`. This overrides the global “PR only” rule, which assumes a hosted repo.

**Commit as soon as a unit of work is complete**; don't batch unrelated work. A unit is any of:
- a new or revised chapter, section, instrument, figure or table
- an extraction or summary of a source document (handbook, paper, policy)
- a literature-review entry, or a batch of verified references
- an analysis run (script + output) or a data-cleaning step
- a template, build or tooling change
- a CLAUDE.md or `ai-use-log.md` update

**Before committing:**
1. Rebuild every Typst document you touched (`typst compile ...`). It must compile without errors. Commit the rebuilt PDFs with their sources.
2. Run `git status` and `git diff --stat`, and check that no participant data, `.env`, or files under `data/raw/` are staged.
3. If AI did anything that needs acknowledgement, add an entry to `ai-use-log.md` in the same commit.

**Staging:** stage files by path (`git add typst/chapters/x.typ ...`), never `git add -A` or `git add .`. Never stage `complete thesis final draft print.pdf` or the signed proposal PDF.

**Message format** (Conventional-Commits style, subject ≤ 72 chars, imperative mood):

```
<type>(<scope>): <what changed>

<why / source / what is still open — optional>

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>
```

| type | use for |
|---|---|
| `content` | new or revised thesis/proposal text written by the candidate, or its structure |
| `lit` | literature notes, verified references, source extractions |
| `analysis` | review/critique documents, statistical scripts and outputs |
| `data` | anonymised datasets, codebooks, cleaning steps |
| `instrument` | questionnaires, interview guides, observation checklists |
| `build` | Typst templates, styling, tooling |
| `fix` | corrections to existing content or data |
| `docs` | CLAUDE.md, READMEs, `ai-use-log.md` |

Scopes are short: `proposal`, `thesis`, `ch1`…`ch5`, `meta`, `refs`, `handbook`, `ai-policy`.

Examples: `lit(handbook): extract FoE by-laws 2022 thesis rules` ·
`analysis(proposal): add citation audit` · `build(thesis): add FGS Annex V template`.

**Never:** amend or rebase commits that already exist, force anything, commit failing builds, or push (there is no remote) unless asked.

## Communication
- Keep responses terse, and put full substance in the Typst files.
- When reporting findings, cite the proposal section/page (e.g. “§4.1, p. 9”).
