#import "../meta.typ": months, timeline

// Source page 12.
= 6 Research Timeline

== Jan 2025 – May 2026

#figure(
  kind: table,
  caption: [Research timeline (Gantt chart)],
  {
    set text(size: 10pt)
    set par(justify: false)
    let n = months.len()
    table(
      columns: (3.2cm,) + (1fr,) * n,
      rows: auto,
      align: (x, y) => if x == 0 { left + horizon } else { center + horizon },
      inset: (x: 3pt, y: 7pt),
      fill: (x, y) => {
        if y == 0 or x == 0 { return none }
        let (a, b) = timeline.at(y - 1).span
        if a <= x and x <= b { black }
      },
      table.header([*Work*], ..months.map(m => text(size: 7.5pt, m))),
      ..timeline.map(t => (t.task,) + ([],) * n).flatten(),
    )
  },
)
