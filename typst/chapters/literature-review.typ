#import "../meta.typ": literature

// Source pages 5–6.
= 2 Literature Review

#list(
  marker: sym.diamond.filled,
  [*Theoretical Framework*: This section will review the relevant theories on attitudes and beliefs, including the Theory of Planned Behavior and Self-Efficacy Theory.],
  [*Previous Studies*: A review of previous research on the impact of teachers' attitudes and beliefs on instructional practices, specifically in mathematics education.],
  [*Problem-Solving Strategies in Mathematics*: An overview of effective problem-solving strategies and their importance in secondary education.],
  [*Contextual Factors in Sri Lanka*: A discussion on the educational context in Sri Lanka, including cultural, societal, and institutional influences on teaching practices.],
)

The study focuses its attention mainly on the above topics. The following table displays the relevant studies under these topics

#figure(
  kind: table,
  caption: [Relevant studies under the review topics],
  {
    set text(size: 10.5pt)
    // NIE 2019 and DOE 2018 share one "Relevant & Current study" cell in the source.
    let (nie, doe, ..rest) = literature
    table(
      columns: (1.6fr, 1.6fr, 3fr, 3fr),
      align: (left + top),
      table.header[*Author*][*Study title*][*Finding*][*Relevant & Current study*],
      nie.author, nie.title, nie.finding, table.cell(rowspan: 2, nie.relevance),
      doe.author, doe.title, doe.finding,
      ..rest.map(r => (r.author, r.title, r.finding, r.relevance)).flatten(),
    )
  },
)
