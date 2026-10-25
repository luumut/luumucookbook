= Reseptin nimi

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 8mm,
  align: top,
  [
    // Vaihda annosmäärä, ainekset ja ohjeet oman reseptisi mukaisiksi.
    == Ainesosat (4 annosta)

    - Ainesosa ja määrä
    - Ainesosa ja määrä

    == Välineet

    - Tarvittava väline

    == Huomioitavaa

    Lyhyt vinkki tai huomio reseptistä.

    == Valmistusohjeet

    1. Ensimmäinen työvaihe.
    2. Seuraava työvaihe.
    3. Tarjoile.
  ],
  [
    // Vaihda kuvan polku ja kuvateksti. Lisää tarvittaessa uusia figure-lohkoja.
    #figure(
      image("media/katrinplommon.jpg", width: 100%, alt: "Katrinplommon"),
      caption: [blank image text],
      numbering: none,
    )
  ],
)
