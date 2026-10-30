#set document(title: "Luumu Cookbook")
#set page(paper: "a4", margin: 20mm, numbering: "1")
#set text(lang: "fi", size: 11pt)
#set smartquote(enabled: false)
#set heading(numbering: none)
#show link: set text(fill: blue)
#show heading.where(level: 1): set text(size: 42pt, font: "FreeMono")
#show heading.where(level: 2): set text(size: 28pt, font: "FreeMono")
#show heading.where(level: 3): set text(size: 18pt)
#show heading.where(level: 4): set text(size: 13pt)

#align(center)[
  #v(50mm)
  #text(size: 45pt, weight: "bold", font: "FreeMono")[Luumu Cookbook]

  Luumujen oma keittokirja :3
  
  https://github.com/luumut/luumucookbook

      #figure(
      image("template/media/katrinplommon.jpg", width: 50%, alt: "alt text"),
      caption: [],
      numbering: none,
    )
    #v(6mm)

    #align(center + bottom)[PDF generoitu:
    #context datetime.today().display("[year]-[month]-[day]")]
    
]
#pagebreak()
= Alkusanat
Tehtiin tälläinen koska voidaan.

Kiitos cockeille ja toivottavasti resepteistä on iloa lukijalle :3
#pagebreak()
#outline(title: [Sisällysluettelo], depth: 2)

#include "ruokaisat/00-index.typ"
#include "makeat/00-index.typ"
#include "leipae/00-index.typ"
#include "juomat/00-index.typ"
#include "soosit/00-index.typ"

// Templatesaatana
#include "template/00-index.typ"
