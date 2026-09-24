// Faithful Typst reconstruction of
// "Research proposal _ Navarajah Prasanthan_Signed.pdf".
// Build: typst compile main.typ
#import "template.typ": proposal
#show: proposal

#include "chapters/front-matter.typ"
#counter(page).update(1)
#include "chapters/introduction.typ"
#include "chapters/literature-review.typ"
#pagebreak()
#include "chapters/objectives.typ"
#pagebreak()
#include "chapters/methodology.typ"
#include "chapters/contributions.typ"
#pagebreak()
#include "chapters/timeline.typ"
#include "chapters/conclusion.typ"
#include "chapters/references.typ"
