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

// Optional category introduction: replace description: none with description: [Your text].
// BEGIN GENERATED RECIPES
#let categories = (
  (
    title: "Juomat",
    description: "Tähän alle nestemäisiä reseptejä.",
    recipes: (
      "juomat/glühwein.typ",
      "juomat/vesi.typ",
    ),
  ),
  (
    title: "Leipae",
    description: none,
    recipes: (
      "leipae/focaccia.typ",
      "leipae/hapanruisreikaleipa.typ",
      "leipae/naan.typ",
      "leipae/pitsapohja.typ",
      "leipae/pizzatäytteet.typ",
    ),
  ),
  (
    title: "Makeat",
    description: none,
    recipes: (
      "makeat/glögivalkosuklaabaileysjuustokakku.typ",
      "makeat/haarukkapikkuleivät.typ",
      "makeat/letut.typ",
      "makeat/marjajuustokakku.typ",
      "makeat/raparperipiirakka.typ",
      "makeat/suklaarommirusinakaurakeksit.typ",
    ),
  ),
  (
    title: "Ruokaisat",
    description: none,
    recipes: (
      "ruokaisat/carbonara.typ",
      "ruokaisat/chiliconcarne.typ",
      "ruokaisat/dumplings.typ",
      "ruokaisat/huijaunuudelit.typ",
      "ruokaisat/kanacurry.typ",
      "ruokaisat/kanakeitto.typ",
      "ruokaisat/kanapastapannussa.typ",
      "ruokaisat/kanarisotto.typ",
      "ruokaisat/kanavuoka.typ",
      "ruokaisat/karjalanpaisti.typ",
      "ruokaisat/katkarapWok.typ",
      "ruokaisat/kenraali_tsaon_kana.typ",
      "ruokaisat/kinkkukiusaus.typ",
      "ruokaisat/koftapullat.typ",
      "ruokaisat/korealainen_kana.typ",
      "ruokaisat/lefanliekkitorttu.typ",
      "ruokaisat/lihapullatspaghetilla.typ",
      "ruokaisat/makaronilaatikko.typ",
      "ruokaisat/makkaraperunat.typ",
      "ruokaisat/possupihvit.typ",
      "ruokaisat/riisipuuro.typ",
      "ruokaisat/sienipasta.typ",
      "ruokaisat/spaghettibolognese.typ",
      "ruokaisat/teriyakikana.typ",
      "ruokaisat/tofuriisilla.typ",
      "ruokaisat/tomaattivuohenjuustokeitto.typ",
      "ruokaisat/uunijuurekset.typ",
      "ruokaisat/viskipossu.typ",
      "ruokaisat/voikanaraidalla.typ",
    ),
  ),
  (
    title: "Soosit",
    description: none,
    recipes: (
      "soosit/texaspete-klooni.typ",
    ),
  ),
)
// END GENERATED RECIPES

#for category in categories [
  #pagebreak(weak: true)
  #heading(level: 1, category.title)
  #line(length: 100%)
  #let description = category.at("description", default: none)
  #if description != none {
    block(above: 0.6em, below: 1em, description)
  }
  #for (index, recipe) in category.recipes.enumerate() [
    #if index > 0 { pagebreak(weak: true) }
    #[
      #set heading(offset: 1)
      #include recipe
    ]
  ]
]
