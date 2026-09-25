# Reference audit (2026-09-25)

Source list: the candidate's reference list in the signed proposal (21 entries, `meta.typ` →
`references`). Each entry was checked online (Crossref, publisher pages, ERIC, repositories) and
typed into `references.bib`. **Only sources the candidate has read may stay in the thesis**
(UoC GenAI policy). The candidate should confirm each one.

## A. Status of the 21 proposal sources

| Key | Status | What changed from the proposal |
|---|---|---|
| astriani2017 | Verified | Journal, volume, issue and pages added (IJARIIE 3(2), 3441–3446) |
| chinnappan1998 | Corrected | Author spelled *Chinnappan*; title *accessing* (not *assessing*); journal is *Mathematics Education Research Journal*; DOI added |
| creswell2009 | Corrected | Full title *…Qualitative, quantitative, and mixed methods approaches*, 3rd ed., Sage |
| dissanayake2011 | Partly verified | World Bank report. The report lists several contributors; check the author line on the title page of the copy read |
| doe2019 | **Unverified** | Grey literature, not online. Kept as in the proposal |
| desi2019 | Verified | Article number 012005 and DOI |
| ekanayake2004 | Corrected | Year is **2004**, not 2014. Doctoral thesis, University of Wollongong |
| kalamani2009 | **Unverified** | Not found online. Candidate to supply publisher and place |
| liyanage2014 | Corrected | Author is *Liyanage, I. M. K.*; title *Strengths*; publisher IDE-JETRO |
| klegeris2011 | Corrected | Journal details and DOI added (*Advances in Physiology Education*, 35(4), 408–415) |
| moe2018 | **Unverified** | Grey literature. Kept as in the proposal |
| nctm2000 | Verified | Publisher omitted (same as author, APA 7) |
| nie2009 | **Unverified** | Grey literature. Kept as in the proposal |
| ozerem2012 | Corrected | Journal details and DOI added (*Procedia – Social and Behavioral Sciences*, 55, 720–729) |
| panaoura2009 | Corrected | Proposal's DOI 10.12973/iejme/3966 belongs to Simamora et al. (2019). CERME 6 paper, pp. 746–755, URL added |
| rosli2013 | Verified | — |
| setiawan2018 | Verified | — |
| sigurdson1994 | Corrected | Issue 4 and DOI added |
| simamora2019 | Corrected | Third author **Hasratuddin** was missing; DOI added |
| siregar2017 | Verified | — |
| voskoglou2011 | Verified | Chapter in Baswell (Ed.), *Advances in mathematics research*, Vol. 12 |

## B. Cited in the proposal text, but no reference entry

The candidate must supply the exact work read for each of these, or remove the citation:
ICMI (2016) · NEC (2018) · NIE (2019) · DOE (2018) · Vygotsky (1978) · Lesh et al. (2019).

## C. Claims in the Chapter 1–2 drafts that need a citation

The drafts (`drafts/2026-09-25/`) contain no in-text citations. These passages name a source
or report evidence, and need a work the candidate has read:

| Section | Passage | Needs |
|---|---|---|
| 1.1 | "principles popularized by George Pólya" | Pólya's own work, as read |
| 1.1 | "there is evidence that many teachers lack adequate training…" | Evidence source(s) |
| 1.2 | "many senior secondary students … exhibit low performance…" | Performance data (e.g. a DOE report read) |
| 1.9 | "strategies proposed by George Pólya" | Same as 1.1 |
| 2.1 | "Theory of Planned Behavior and Self-Efficacy Theory" | Original theory sources, if kept |
| 2.2 | "According to George Pólya…", the four steps | Pólya, with page number for the steps |
| 2.3 | "Research shows that students who are explicitly taught these strategies perform better…" | Empirical studies |
| 2.4 | Definition of teacher competency and its components | Source of the definition |
| 2.5 | Constructivism; Piaget's theory; Vygotsky's ZPD | Piaget and Vygotsky works read |
| 2.6 | All three bullet claims ("Studies indicate…", "Research also shows…", "Some studies highlight…") | The studies |
| 2.6 | Challenges in developing countries including Sri Lanka | Source |
| 2.7 | List of challenges | Source(s) |
| 2.8 | Curriculum reforms; "The National Institute of Education … has introduced guidelines…" | NIE document read |
| 2.9 | Strategies for enhancing teacher competency | Source(s) |

## D. How to cite in the Typst files

- Parenthetical: `@creswell2009` → (Creswell, 2009). With a page: `@creswell2009[p. 14]`.
- Narrative: `#cite(<creswell2009>, form: "prose")` → Creswell (2009).
- `thesis.typ` has `list-uncited-references = true` while drafting, so every `.bib` entry is listed.
  Set it to `false` before submission: APA lists cited works only.
