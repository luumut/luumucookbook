#set document(title: "Luumu Cookbook")
#set page(paper: "a4", margin: 20mm, numbering: "1")
#set text(lang: "fi", size: 11pt)
#set smartquote(enabled: false)
#set heading(numbering: none)
#show link: set text(fill: blue)

#align(center)[
  #text(size: 28pt, weight: "bold")[Luumu Cookbook]

  Generoitu:
  #context datetime.today().display("[year]-[month]-[day]")
]

#pagebreak()
#outline(title: [Table of Contents], depth: 2)

#include "juomat/00-index.typ"
#include "leipae/00-index.typ"
#include "makeat/00-index.typ"
#include "ruokaisat/00-index.typ"
#include "soosit/00-index.typ"
