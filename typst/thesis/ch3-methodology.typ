#import "../meta.typ": phases
#import "../thesis-template.typ": todo, traces, table-skeleton, figure-placeholder
// Layout only. Open design issues are listed in `analysis.typ` § Consistency review.

= Methodology

== Introduction
#todo[Overview of the chapter and of the multi-phase mixed-methods design.]

== Research Paradigm
#todo[Philosophical stance (e.g. pragmatism) and why it fits a mixed-methods,
intervention study.]

== Research Design
#traces(1, 2, 3, 4, 5, 6)
#todo[Multi-phase mixed-methods design (Proposal §4): Phase 1 quantitative survey →
Phase 2 qualitative exploration → Phase 3 intervention → teacher education module.
Explain how each phase informs the next.]
#figure-placeholder(caption: [Multi-phase mixed-methods research design])[
  Design diagram, redrawn from Proposal §4 (p. 8) after the sampling issues are resolved
]

#figure(
  caption: [Research phases and objectives, as stated in the proposal],
  table(
    columns: (auto, 1fr, 1fr, auto),
    table.header[*Phase*][*Approach*][*Method*][*Objectives*],
    ..phases.map(p => (p.name, p.kind, p.method,
      p.objectives.map(n => numbering("I", n)).join(", "))).flatten(),
  ),
)
#todo[Phase 3 → IV, V, VI is inferred, not stated in the proposal. Confirm it.]

== Population
#todo[G.C.E. O/L (grades 10–11) mathematics teachers in Sri Lanka: number,
distribution by province, zone and medium; inclusion criteria (currently
teaching grade 10 or 11). The proposal says "secondary" in Participants but
"senior secondary" in the title; state O/L explicitly.]

== Phase 1: Quantitative Survey
#traces(1, 2)

=== Sampling and Sample Size
#todo[One sampling frame and one N, with a justification (power analysis for
regression; 5–10 respondents per item for factor analysis). The proposal gives
45 (stratified), 150 (convenience) and "purposive"; resolve to one.]
#table-skeleton(caption: [Phase 1 sample by education zone], rows: 5,
  [Education zone], [Schools], [Teachers (population)], [Teachers (sample)])

=== Instrument: Teacher Questionnaire
#todo[Sections, number of items, response scale, and which items measure
Objective I (cognitive ability) and which measure Objective II (level of use).]
#table-skeleton(caption: [Structure of the teacher questionnaire], rows: 4,
  [Section], [Construct], [No. of items], [Objective])

=== Validity and Reliability
#todo[Expert panel and content validity index (CVI); pilot study (sample,
setting); Cronbach's α (≥ .70) per scale; EFA/CFA if N allows.]

=== Data Collection Procedure
#todo[Permissions (MOE, provincial and zonal offices), mode (online or in person),
timing, follow-up.]

=== Data Analysis
#todo[Software (R or Python), data screening, descriptive statistics, and the
inferential tests for each research question. The proposal lists factor analysis,
discriminant function analysis and regression.]

== Phase 2: Qualitative Exploration
#traces(1, 2, 3)

=== Participants and Selection
#todo[How participants are drawn from Phase 1 (the proposal gives 45 and 30
interviews, and 20 observed classes). Selection criteria. Pseudonyms T01…]

=== Instruments
#todo[Semi-structured interview schedule, classroom observation checklist,
document analysis guide (lesson plans, schemes of work). Say how each was
developed and piloted.]

=== Data Collection Procedure
#todo[Interview setting, language, recording, transcription and translation;
observation protocol.]

=== Data Analysis
#todo[Reflexive thematic analysis (Braun & Clarke), coding in NVivo (the proposal
names QSR N6, which is legacy software). Codebook development.]

=== Trustworthiness
#todo[Credibility, transferability, dependability, confirmability; triangulation
and member checking.]

== Phase 3: Intervention
#traces(4, 5)

=== Design
#todo[Quasi-experimental pre/post design, with a comparison group if feasible.
The proposal has no control group or pre/post instrument.]

=== Participants
#todo[Sampling (the proposal says "convenient"), group sizes, assignment.]

=== The Intervention
#todo[How Phase 1–2 findings shaped it; aims, content, duration, sessions,
delivery mode, facilitators, materials.]
#table-skeleton(caption: [Intervention plan], rows: 5,
  [Session], [Focus / strategy], [Activities], [Duration])

=== Fidelity of Implementation
#todo[Attendance, session checklists, observation and reflection logs.]

=== Instruments and Measures
#todo[Pre/post measures of competency in using problem-solving strategies;
classroom observation; teacher reflections; stakeholder feedback.]

=== Data Analysis
#todo[Pre/post comparison (e.g. paired t-test or Wilcoxon; ANCOVA with a
comparison group), effect sizes, qualitative analysis of reflections.]

== Development of the Teacher Education Module
#traces(6)
#todo[The proposal has no method for Objective VI. Describe the design model,
how findings feed into it, expert review and validation of the module.]

== Integration of Quantitative and Qualitative Data
#todo[Points of integration between phases; joint displays; meta-inferences.]

== Language of Instruments
#todo[Sinhala, Tamil and English versions; translation and back-translation
procedure; checking equivalence.]

== Ethical Considerations
#todo[UoC Faculty of Education ethics clearance; permissions; information sheet
and consent; the right to withdraw; confidentiality and pseudonyms; data storage;
no identifiable data in AI tools.]

== Summary
#todo[A table or paragraph mapping objective → research question → phase →
instrument → analysis.]
#table-skeleton(caption: [Alignment of objectives, questions, data and analysis], rows: 6,
  [Objective], [Research question], [Phase / instrument], [Analysis])
