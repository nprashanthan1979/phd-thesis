// Structured extraction and consistency review of the research proposal.
// Build: typst compile analysis.typ
#import "template.typ": proposal
#import "meta.typ": *

#show: proposal
#set heading(numbering: "1.1")

#let note(body) = block(
  width: 100%,
  inset: 8pt,
  radius: 3pt,
  fill: luma(245),
  stroke: (left: 2pt + luma(120)),
  text(size: 10.5pt, body),
)
#let small-table(..args) = {
  set text(size: 10pt)
  table(align: left + top, ..args)
}

#align(center)[
  #text(size: 17pt, weight: "bold")[Research Proposal — Structured Extraction & Review]
  #v(0.3em)
  #text(size: 12pt, style: "italic")[#title]
  #v(0.3em)
  #text(size: 10pt)[Source: _Research proposal \_ Navarajah Prasanthan\_Signed.pdf_ (14 pages)]
]

#outline(depth: 2, indent: auto)
#pagebreak()

= Proposal at a glance

#small-table(
  columns: (4.2cm, 1fr),
  [*Title*], title,
  [*Candidate*], [#student.name (#student.status, as printed)],
  [*Index no.*], student.index,
  [*Institution*], [#student.faculty, #student.university],
  [*Supervisor*], [#supervisor.name — #supervisor.role],
  [*Supervisor sign-off*], [Signed, dated #supervisor.signed (recommendation text left blank)],
  [*Field*], [Mathematics education / teacher professional development],
  [*Population*], [Senior secondary (G.C.E. A/L) mathematics teachers, Sri Lanka],
  [*Design*], [Multi-phase mixed methods: quantitative survey → qualitative exploration → experimental/action intervention → teacher education module],
  [*Planned period*], [#month-label(1) – #month-label(months.len()) (#months.len() months)],
  [*Key deliverable*], [A teacher education module on effective use of problem-solving strategies in senior secondary mathematics],
)

= Document structure

#small-table(
  columns: (auto, 1fr, auto),
  table.header[*Section*][*Content*][*PDF pp.*],
  [Front matter], [Cover, topic page with index no., supervisor recommendation & signature], [1–3],
  [1 Introduction], [1.1 Background of the study; 1.2 Research Problem], [4–5],
  [2 Literature Review], [Four review themes + summary table of 5 studies], [5–6],
  [3 Research Objectives], [Six objectives (I–VI), highlighted in source], [7],
  [4 Methodology], [Design diagram; 4.1 Research Design (Phases 1–3, Participants); 4.2 Data Collection; 4.3 Data Analysis], [8–11],
  [5 Contributions], [Potential contributions and implications], [11],
  [6 Timeline], [Gantt chart, Jan 2025 – May 2026], [12],
  [7 Conclusion], [One paragraph], [12–13],
  [8 References], [#references.len() entries], [13–14],
)

= Research problem and rationale

== Problem statement (condensed)
Senior secondary mathematics teachers in Sri Lanka possess subject knowledge but struggle to integrate problem-solving techniques into their teaching. Consequences named: low student engagement, poor mathematics performance, weakened critical thinking. The study will _investigate and enhance_ teacher competency in using problem-solving strategies.

== Evidence claims made in the Introduction
#small-table(
  columns: (2fr, 1.3fr, 1.3fr),
  table.header[*Claim*][*Cited source*][*In reference list?*],
  [Room for improvement in teachers’ mathematics knowledge], [ICMI, 2016], [No],
  [Teachers’ content knowledge insufficient; underprepared to help students internalise concepts], [Siregar, 2017], [Yes],
  [Appointed mathematics teachers fail to upgrade their knowledge], [National Education Commission, 2018], [No],
  [Performance of teachers in mathematics is poor], [Department of Examination, 2019], [Yes (DOE 2019 — an O/L examiners’ report)],
)

== Key constructs
- *Problem-solving* — framed as a fundamental part of mathematical learning: exploring, conjecturing, reasoning.
- *Teacher competency* — knowledge + pedagogical skill to implement problem-solving strategies in class.
- *Cognitive abilities* of teachers regarding problem-solving strategies (Objective I).
- *Attitudes and beliefs* — introduced via the theoretical framework and dominant in the methodology text.

= Literature review components

== Planned review themes
#small-table(
  columns: (auto, 1fr),
  [*Theoretical Framework*], [Theories on attitudes and beliefs: Theory of Planned Behavior; Self-Efficacy Theory],
  [*Previous Studies*], [Impact of teachers’ attitudes and beliefs on instructional practice in mathematics],
  [*Problem-Solving Strategies*], [Effective strategies and their importance in secondary education],
  [*Contextual Factors in Sri Lanka*], [Cultural, societal and institutional influences on teaching practice],
)

== Studies tabulated
#small-table(
  columns: (2.3cm, 2.8cm, 1fr, 1fr),
  table.header[*Author*][*Topic*][*Finding*][*Link to current study*],
  ..literature.map(r => (r.author, r.title, r.finding, if r.relevance == none [_(shared with row above)_] else { r.relevance })).flatten(),
)

= Objectives and traceability

#small-table(
  columns: (auto, 1fr, auto),
  table.header[*No.*][*Objective*][*Addressed in*],
  ..objectives.enumerate().map(((i, o)) => {
    let n = i + 1
    let hits = phases.filter(p => n in p.objectives).map(p => p.name)
    (numbering("I", n), o, if hits.len() == 0 [—] else { hits.join(", ") })
  }).flatten(),
)
#note[
  Phase 1 → Objectives I–II and Phase 2 → Objectives I–III are stated explicitly in the design diagram. The Phase 3 mapping (IV–VI) is inferred: Phase 3 “assesses progress after intervention” and is followed by the “Designing the Module” box; the source does not number these links.
]

= Methodology — normalised by phase

#for p in phases [
  == #p.name: #p.kind
  #small-table(
    columns: (3.6cm, 1fr),
    [*Method*], p.method,
    [*Objectives*], p.objectives.map(n => numbering("I", n)).join(", "),
    [*Sample*], p.sample,
    [*Sampling*], p.sampling,
    [*Data collection*], p.collection,
    [*Analysis*], list(..p.analysis.map(a => [#a])),
  )
]

== Phase narrative (Section 4.1)
#small-table(
  columns: (auto, 1fr, 1fr, 1fr),
  table.header[*Step*][*Phase 1 — Survey*][*Phase 2 — Interviews*][*Phase 3 — Intervention*],
  [*Design*], [Questionnaire on attitudes to mathematics & use of problem-solving strategies; perceptions, effectiveness, barriers, facilitators], [Semi-structured interview protocol, open-ended questions with classroom examples], [Experimental / action component; teachers co-design self-learning interventions],
  [*Sampling*], [Purposive; “sufficient for statistical power”], [Subset of survey sample, diverse in attitudes and contexts], [Convenience sample],
  [*Collection*], [Online or in person], [Individual or group interviews, recorded, with notes], [Observation, reflection, documentation],
  [*Analysis / evaluation*], [Descriptive statistics; differences by experience, background, institution], [Thematic analysis, compared with quantitative results], [Effectiveness evaluation; feedback from teachers & stakeholders],
)

== Consolidated data plan (Sections 4.2–4.3)
#small-table(
  columns: (auto, 1fr, auto),
  table.header[*Instrument*][*Purpose*][*Size*],
  [Structured questionnaire], [Attitudes, beliefs, reported practices], [Sample of 150 (convenience)],
  [Semi-structured interviews], [Experiences and challenges], [30 teachers],
  [Classroom observations], [Actual implementation; triangulation], [20 classes],
  [Statistics], [Correlation, regression (+ factor, discriminant analysis in diagram)], [—],
  [Thematic analysis], [Interview transcripts & observation notes (QSR N6)], [—],
)

= Timeline (calendar form)

#small-table(
  columns: (1fr, auto, auto, auto),
  table.header[*Activity*][*Start*][*End*][*Months*],
  ..timeline.map(t => {
    let (a, b) = t.span
    (t.task, month-label(a), month-label(b), str(b - a + 1))
  }).flatten(),
)

= Consistency review

Observations below compare the proposal against itself. They are offered as revision points, not as judgements on the study’s merit.

== Sample size and sampling
#small-table(
  columns: (auto, 1fr, 1fr),
  table.header[*Location*][*Sample*][*Sampling*],
  [Diagram, Phase 1], [45 teachers, 5 education zones], [Stratified],
  [Diagram, Phase 2], [45 teachers, 5 education zones], [—],
  [Diagram, Phase 3], [—], [Convenient],
  [§4.1 Phase 1.2], [“Sufficient number … statistical power”], [Purposive],
  [§4.1 Phase 2.2], [Subset of survey sample], [—],
  [§4.1 Participants], [150 teachers, urban / suburban / rural], [Convenient],
  [§4.2], [30 interviewees; 20 observed classes], [—],
)
- Four sample figures (45, 150, 30, 20) and three sampling schemes (stratified, purposive, convenience) are used for overlapping groups. One sampling frame per phase would fix this.
- Phase 2 has the same N as Phase 1 (45) yet is described as a subset; §4.2 gives 30.
- Factor analysis and discriminant function analysis with N = 45 are likely underpowered; the planned N and analyses should be aligned.

== Construct alignment
- Title, problem and objectives focus on *competency / cognitive ability in problem-solving strategies*; the theoretical framework and much of §4.1 focus on *attitudes and beliefs towards mathematics* (Theory of Planned Behavior, Self-Efficacy). The link between the two is not stated.
- §4.1 Phase 2.3 refers to “self-learning … G.C.E advanced level classes” and Phase 3 to “self-learning interventions”, which do not appear elsewhere — this looks carried over from a different study.
- Population is “senior secondary” in the title but “secondary school mathematics teachers” in Participants; DOE 2019 evidence concerns the O/L (junior) examination.
- §4.1 refers to “the research questions”, but no research questions are listed.

== Design completeness
- Phase 3 is called experimental, but there is no control or comparison group, pre/post instrument, intervention length or content.
- Objective VI (the module) has no method beyond the “Designing the Module” box.
- No instrument development, validation or reliability testing (e.g. pilot, Cronbach’s α), and no ethics approval or informed consent.
- QSR N6 is legacy software, since replaced by NVivo.

== Timeline feasibility
- Data collection for all three phases, intervention included, fits in Sep–Nov 2025 (3 months); the intervention and post-assessment are not scheduled separately.
- Tool development (Aug–Oct) overlaps data collection (Sep–Nov) by two months, leaving no pilot window.
- No slot for ethics clearance or module design; total span is #months.len() months.

== Citation audit
#small-table(
  columns: (1fr, 1fr),
  table.header[*Cited in text, missing from list*][*Listed but not cited in text*],
  [
    - ICMI (2016)
    - National Education Commission (2018)
    - NIE (2019) — list has NIE (2009)
    - DOE (2018) — list has DOE (2019)
    - Vygotsky (1978)
    - Lesh et al. (2019)
    - Theory of Planned Behavior / Self-Efficacy Theory (no source)
  ],
  [
    Astriani et al. 2017; Chinnapan 1998; Creswell 2009; Dissanayake & Sonnadara 2011; Desi et al. 2019; NCTM 2000; NIE 2009; Ekanayake 2014; Kalamani 2009; Kamala Liyanage 2014; Klegeris & Hurren 2011; MOE 2018; Özerem 2012; Rosli et al. 2013; Setiawan & Supiandi 2018; Sigurdson et al. 1994; Simamora & Saragih 2019; Panaoura & Gagatsis 2009; Voskoglou 2011
  ],
)
- List is not alphabetical (Desi after DOE; NIE before Ekanayake; Panaoura after Simamora).
- Six entries lack a journal or publisher (Astriani, Ekanayake, Kalamani, Kamala Liyanage, Klegeris, Özerem).
- Panaoura & Gagatsis: the DOI is printed as `https://doi.org/https://doi.org/…`, and 10.12973/iejme/3966 points to IEJME, not CERME 6. Needs checking.
- Creswell (2009): the 3rd edition is subtitled _Qualitative, Quantitative, and Mixed Methods Approaches_ (Sage, Thousand Oaks). Needs checking.
- Four entries are about student geometry (Chinnapan, Özerem, Panaoura, Ekanayake), not teacher competency.

== Editorial
- “P.hd Student” → “PhD Student”; the candidate’s name is spelled _Prashanthan_ in the document but _Prasanthan_ in the file name.
- “Teacher’ mathematics knowledge” → “Teachers’”; “attitudes towards attitudes towards” (Phase 2.4); “problems solving” (Phase 3.3); “Convenient sample” → “convenience sample”.
- The supervisor recommendation field is signed but left empty.
