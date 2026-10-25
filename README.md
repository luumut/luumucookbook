# Luumujen keittokirja repo

Tänne on pakko laittaa hyviä reseptejä! >:3

Lue reseptikirjaa pdf-formaatissa: [Cookbook.pdf](https://github.com/luumut/luumucookbook/releases/download/cookbook-latest/cookbook.pdf)

## Kehitysohje

Reseptikirja on toteutettu [Typstillä](https://typst.app/docs/).

Vahva suositus VSCodelle ja Tinymist nimiselle kirjastolle sille.

### Kuinka lisätä uusi resepti?

- Lisää reseptisi oikean alaotsikon alle sekä linkki typ-tiedostoosi 00-index.typ tiedostoon.
- Puske muutokset sisään
- Automaatio leipoo uuden kokkikirjan

## CI/CD

Repossa on hienoakin hienompi Github actions-putki, joka renderöi typstillä uuden pdf-tiedoston aina kun masteriin pusketaan muutoksia.
