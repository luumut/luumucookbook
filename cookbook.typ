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


// Lisää hienon otsikon sivunumeron viereen footeriin
#set page(
  footer: context {
    let headings = query(selector(heading.where(level: 1)).before(here()))
    align(center)[
      #if headings.len() > 0 {
        [#(headings.last().body) - ]
      }#counter(page).display("1")
    ]
  },
)

// Etusivu
#align(center)[
  #v(40mm)
  #line(length: 80%)
  #text(size: 56pt, weight: "bold", font: "FreeMono")[Luumu Cookbook]
  //#line(length: 80%)
  
  _Koska ruoanlaitto on kivaa_

  _Luumujen oma keittokirja :3_
  #v(10mm)
  
      #figure(
      image("template/media/katrinplommon.jpg", width: 50%, alt: "alt text"),
      caption: [],
      numbering: none,
    )
    #v(6mm)

    #align(center + bottom)[PDF generoitu:
    #context datetime.today().display("[year]-[month]-[day]")]
    https://github.com/luumut/luumucookbook
]
#pagebreak()

// Alkusanat -sivu
= Alkusanat
Tehtiin tälläinen koska voidaan.

Kiitos cockeille ja toivottavasti resepteistä on iloa lukijalle :3

Tähän voisi tulevaisuudessa ottaa kuvat innokkaista cockeistamme...
#pagebreak()

// Sisällysluettelo
#outline(title: [Sisällysluettelo], depth: 2)


// Itse cookbook

#include "ruokaisat/00-index.typ"
#include "makeat/00-index.typ"
#include "leipae/00-index.typ"
#include "juomat/00-index.typ"
#include "soosit/00-index.typ"

// Templatesaatana
#include "template/00-index.typ"


