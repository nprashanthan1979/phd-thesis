// Structured data extracted from
// "Research proposal _ Navarajah Prasanthan_Signed.pdf" (14 pages).
// Shared by the proposal chapters and by analysis.typ.

#let title = "Enhancing the competency of using problem solving strategy in mathematics among senior secondary teachers in Sri Lanka"

#let student = (
  name: "Navarajah Prashanthan",
  status: "P.hd Student", // spelled as in source
  index: "2023/Phd/PT/003",
  faculty: "Faculty of Education",
  university: "University of Colombo",
)

#let supervisor = (
  name: "Dr. D.V. K.P. Seneviratne",
  role: "Head of the Department, Department of Science and Technology Education, Faculty of Education, University of Colombo, Colombo.",
  signed: "23.01.2025",
)

#let objectives = (
  "Identify the current level of cognitive abilities of secondary mathematics teachers regarding problem-solving strategies.",
  "Explore the level of use of problem solving strategies in mathematics by senior secondary teachers.",
  "Find out areas for improvement in problem-solving strategy among senior secondary teachers.",
  "Design and implement an intervention to enhance teachers’ competency in applying problem-solving strategies in mathematics.",
  "Assess the progress of use of problem-solving strategies in mathematics after intervention.",
  "Propose a teacher education module on effective use of problem solving strategies in mathematics in senior secondary education.",
)

// Literature review summary table (Section 2).
#let literature = (
  (
    author: "NIE, 2019",
    title: "Teacher’ mathematics knowledge",
    finding: "Many teachers are without required knowledge and trainings to teach mathematics",
    relevance: "It is essential to ensure all mathematics teachers are subject-competent and have good pedagogical knowledge to use problem solving strategies to teach mathematics effectively.",
  ),
  (
    author: "DOE, 2018",
    title: "Teachers’ pedagogical knowledge",
    finding: "Many teachers fail to use proper pedagogy while teaching mathematics.",
    relevance: none, // shares the NIE, 2019 cell in the source table
  ),
  (
    author: "Vygotsky, 1978",
    title: "Collaborative Learning",
    finding: "Studies have shown that collaborative approaches, where students work in groups to solve problems, enhance problem-solving skills. Vygotsky's Social Development Theory emphasizes the role of social interaction in cognitive development, supporting this finding",
    relevance: "Design and implement an intervention to enhance teachers’ competency in applying problem-solving strategies in mathematics",
  ),
  (
    author: "Lesh et al., 2019",
    title: "Problem-Solving Strategies in Mathematics",
    finding: "An overview of effective problem-solving strategies and their importance in secondary education.",
    relevance: "Empower mathematics problem solving competency in Sri Lanka",
  ),
)

// Section 4 design diagram, one entry per phase.
#let phases = (
  (
    name: "Phase 1",
    kind: "Quantitative Phase",
    method: "Cross-sectional survey",
    objectives: (1, 2),
    sample: "45 mathematics teachers from 5 education zones",
    sampling: "Stratified sampling",
    collection: "Survey questionnaire (online or in person)",
    analysis: ("Factor analysis – factor loadings", "Discriminant function analysis", "Regression analysis"),
  ),
  (
    name: "Phase 2",
    kind: "Qualitative Phase",
    method: "Exploratory study",
    objectives: (1, 2, 3),
    sample: "45 mathematics teachers from 5 education zones",
    sampling: "Subset of Phase 1 survey sample",
    collection: "Individual in-depth semi-structured interviews with documents and observation",
    analysis: ("Coding and thematic analysis", "Observation reports", "Similar and different themes development", "QSR N6 qualitative software"),
  ),
  (
    name: "Phase 3",
    kind: "Quantitative & Qualitative mixed design using experimental design",
    method: "Intervention (experimental / action component)",
    objectives: (4, 5, 6),
    sample: "Convenient sample",
    sampling: "Convenience sampling",
    collection: "Observation, reflection and documentation",
    analysis: ("Assess the progress of use of problem-solving strategies in mathematics after intervention", "Feedback from teachers and stakeholders"),
  ),
)

// Section 6 Gantt chart: Jan 2025 – May 2026 (17 columns).
#let months = ("J", "F", "M", "A", "M", "J", "JL", "A", "S", "O", "N", "D", "J", "F", "M", "A", "M")

// `span` is an inclusive (first, last) 1-based column range into `months`.
#let timeline = (
  (task: [Reading literature reviews], span: (1, 15)),
  (task: [Writing 1#super[st] and 2#super[nd] Chapters], span: (7, 8)),
  (task: [Developing data collection tools], span: (8, 10)),
  (task: [Data collection], span: (9, 11)),
  (task: [Data processing], span: (11, 14)),
  (task: [Data analysis], span: (13, 15)),
  (task: [Report writing], span: (13, 17)),
  (task: [Thesis submission], span: (16, 17)),
)

// Calendar label for a timeline column, e.g. 1 -> "Jan 2025".
#let month-label(col) = {
  let names = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
  names.at(calc.rem(col - 1, 12)) + " " + str(2025 + calc.quo(col - 1, 12))
}

// Reference list (Section 8), transcribed as printed.
#let references = (
  [Astriani, N., Surya, E., & Syahputra, E. (2017). The effect of problem-based learning to students’ mathematical problem-solving ability],
  [Chinnapan, M. (1998). The assessing of geometry schemas by high school students. _Mathematics Education Journal, 10_(2), 27-45.],
  [Creswell, J.W. (2009). _Research Design: Quantitative and Qualitative Approaches._ London: Sage Publishers Ltd.],
  [Dissanayake V. & Sonnadara U. (2011). Strengthening Science Education. Colombo, SriLanka. Processed.],
  [DOE (2019). GCE O/L Examination, Controlling chief examiners meeting report, Department of Examinations, Sri Lanka.],
  [Desi, Lesmini, B., & Hidayat, I. (2019). Enhancing student problem solving skills through worksheets-assisted problem-based learning. _Journal of Physics: Conference Series, 1166_(1). #link("https://doi.org/10.1088/1742-6596/1166/1/012005")],
  [National Council of Teachers of Mathematics (NCTM). (2000). _Principles and standards for school mathematics._ Reston: VA.],
  [NIE (2009). An Evaluation of the Process of Development and Implementation of the New Curriculum in Grades 7 and 11, National Institute of Education, Sri Lanka],
  [Ekanayake, M.B. (2014). The development and evaluation of Web-based learning environment for proof-type problem solving in geometry among secondary students.],
  [Kalamani, T. (2009). Fundamental psychology in mathematics Education.],
  [Kamala Liyanage, L.M. (2014). Education system of Sri Lanka: Strength and weaknesses.],
  [Klegeris, A., & Hurren, H. (2011). Impact of problem-based learning in a large classroom setting: Student perception and problem-solving skills.],
  [Ministry of Education (MOE), (2018), Annual Performance Report - 2018],
  [Özerem, A. (2012). Misconceptions in geometry and suggested solutions for seventh grade students.],
  [Rosli, R., Goldsby, D., & Capraro, M. M. (2013). Assessing students’ mathematical problem-solving and problem-posing skills. _Asian Social Science, 9_(16), 54–60. #link("https://doi.org/10.5539/ass.v9n16p54")],
  [Setiawan, B., & Supiandi, M. I. (2018). The contribution of metacognitive skills and reasoning skills on problem-solving ability based on problem-based learning (PBL) model. _Anatolian Journal of Education, 3_(2), 75–86.],
  [Sigurdson, S. E., Olson, A. T., & Mason, R. (1994). Problem solving and mathematics learning. _Journal of Mathematical Behavior, 13_, 361–388.],
  [Simamora, R. E., & Saragih, S. (2019). Improving students’ mathematical problem solving ability and self-efficacy through guided discovery learning in local culture context. _International Electronic Journal of Mathematics Education, 14_(1), 61–72.],
  [Panaoura, G. and Gagatsis, A. (2009). The geometrical reasoning of primary and secondary school students. CERME 6, WG5, (pp. 746-755) #link("https://doi.org/10.12973/iejme/3966")],
  [Siregar, N. (2017). Problem-solving ability of students mathematics in problem-based learning. _Journal of Educational Science and Technology, 3_(3), 185–189.],
  [Voskoglou, M. G. (2011). Problem-solving from Polya to nowadays: A review and future perspectives. In A.R. Baswell (Ed). _Advances in mathematics research, 12_(1), 1-18. Nova Publishers.],
)
