
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Data dan R Notebook untuk “Linguistik Korpus Kuantitatif dan Kajian Semantik Leksikal Sinonim Emosi Bahasa Indonesia”

<!-- badges: start -->

[Gede Primahadi Wijaya
Rajeg](https://figshare.com/authors/Gede_Primahadi_Wijaya_Rajeg/1234749)
<a itemprop="sameAs" content="https://orcid.org/0000-0002-2047-8621" href="https://orcid.org/0000-0002-2047-8621" target="orcid.widget" rel="noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

Repositori data dan R Notebook ini berlisensi [*Creative Commons
Attribution-NonCommercial-ShareAlike 4.0
International*](https://creativecommons.org/licenses/by-nc-sa/4.0/).

[![CC BY-NC-SA
4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![](https://img.shields.io/badge/doi-10.26499/li.v38i2.155-green.svg)](https://doi.org/10.26499/li.v38i2.155)
[![DOI](https://img.shields.io/badge/doi-10.6084/m9.figshare.12073065-blue.svg?style=flat&labelColor=gainsboro&logoWidth=40&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAFAAAAAZCAYAAACmRqkJAAAKi0lEQVR4Ae3ZaVBUV97H8evuE0EfH32MmkcfoyAuGjXKgkvMaFRAFuiloemWvRuEXlgEBREXBYJiXAQUFeKocUniQiKogAJhQWwWENDEjLNYvjFLzUzNkplEZb5kTme6nCRjKlOpSZlb9SmL2%2Ffcuv3re87%2FnKP0TYfOcslqPMbt63xBKuh09MTxgi7HKT1Sj1TvKp%2BMkZB6%2FXT8c4AjUYPyVdfb7Qs6HTIJ8EHe7Ul%2B152CphDabRQ0uMr7%2FRQgh%2B8qU6%2FBiPDVGv0jq0uGE94b0ZZ3j%2B25MTetoMsh%2FWD91OBqT9%2Fsehd5EqGV17nKMzTqOHvaRMMLEp7qACfinq%2FW1BBx5ZxB13x5X3Jr1v%2Fz9pUcaHU63PiicjrhvXfNRbY1Th49Q6Y1vu6zyqSjzX3aVIgf4OkKToxhgxpd5OMzV0bYE4CRN1Chu34pnTfwnV03FiTlfzDRXBHo6dfgIq8sX6ByV6vjthGc0UdrrPPVGFQBxlSjzJQWENVUZkebceiLpyM8IZSx7O7Zl4JivUNMZX5h8Rt4%2B2L0llKfgu6JKa%2BXvpB5bZ48%2Ba3F6lil2pDkE2rODzCsU0VUnNFHNZQqdS3lx3Utl%2FMILQcfYt5TEeC1GSprgAq0XlgYGLQyxJTlr0uK0DVX7E5s2ZtOgHvLw5fLK9xVmcqguEj%2F2LXbwsvPBkZZKl4j5NcIKinaUsLbejFWZ7m8Do2cmwnb4cFqArRwx3TEYzi%2Bz7DTD0uhxnj8cAEWWUZK%2BTcdhh4pmTWUsW01Y1uCUmNY7Rtqzo5svJSS0poVXtg6yVj7sn9qunek3j8xPVXXeMFoaDkev6lDF7ene7Y5r2taNAXmEBXaP69zevaOjuUeeZ0zhzJuPsM5CdYvOhZVqBMhBqIVDt8zwGdQjR4of9AA%2BXJjUFpww7GodnHAQca4srDAWCXjW3pETal%2BbfumuOLKqSm17vIQtWr1Uu3JYy6JbXuXFbRN1R8pm5byxtG5CcdOz9EUVc7I5IeQEWQ7wWVwzwrsRn%2BbAFeiCxNsKv5Y9P03BFgjAlT90AGOQy2T47fObl00ocFZHl%2B2UGXw0RjzNUWHTPFthckHWh18al8KsGuaFigVVzlKuY%2BG9z37qvuoGlelpsJVldrgrFjbOE%2BeWe8uW18W84qCqc4s7tmCIgzI75hs%2FaJKNFu7rF%2BIIIhr%2BmIQ%2Btn8LQkDMQOeWAYnDHgsQI3NNU7W9j4h5t72o%2FEyvLEQ%2F%2Bu7ymzbOxbCAeOxAgtghz6YgOVYiufEOUlqu0M37ho%2BYn%2FnpJT8bsejVSt90uqdFdlGmV7hF7cuWXetNCShLX%2BI3nKhN%2ByvCs%2Bs6GQpWB33fzKNQR%2BqWr022yvc94q7spBCY%2Bbzkou6ZfJNPf89ZN%2FdidYHnIsKfIzjCMIc7MAwSJiMPFxGMcKQixGwx07R%2FiEe4CNsxFCbAJvwifj8LkIgYRHa8Lm47jNY8AokmMS5NryPh%2FijOB%2BOX4h7foEuyPHlisMtylJpzu1YspkQ36YbLqnx8F1X4abaqmYs9DGmLlrk4CE9XlHlKZskxfpt%2FUJLzyhV23dG%2BITF72fqo9njEaokwIu8lSbG1N4wx273CrP%2B%2BjniQVZhGrzQjlEioFIRcjDM6MIdjBVtHogvl4W9qIX8sTfwU5SgU%2FzdhdGYLcJ9BzvRID6vgx2SxN8PUI9KnIEWH4n7FuIo%2FoRfYV5vMMV4wHRFs%2BvG%2FKl05ZrDVdP11T7eulK3oNQcz%2FAXcj3DpMePjO44KetDL2lDh%2FmV1S3nNoeWnJb7RSXmMJl%2BI0GmH13rKs8lvEdQwfoWKmCxdmGbAEdgAW5jFiQhBb8WXSYTPSjGCBHaMPR5LMANkOCM%2B%2FgD3MS5Z8W1ElzwW3HNJCSI9tcw2ub%2BO8T5LPTBQBy1nusNcB7ztximI1sIsSSzXb04v3vyusJmx63nMufHXlV6LvpEShDd9x%2FHFYWXVPuSX7%2FD7zmpcjuWRupbyvaHnj8Z7BNsUFCArm70iTRcd5bFEN7oxwJs%2FpoA%2FwfBaLJ2Z2EFbmEsNKL7fYYPUI9DIqj%2Fsgkw0CasW%2BL6RbBDFI7gTZSKzz6Gk02AJ23G3QF4xybYU8INce6s5CJNlTyXhYwKv%2FRWMiEeimquzIhrPpGzuSNCsbvLec2%2Brpmh2e0yu%2FxOp96wv6p8X0xeIZW5Bo2%2F6ucdvb%2FdMWVDm8lX11pRpD16OJ6VyZsrQ8yK%2BVFJ9h4UhwEHDj5JgGE23UkSfoZujMMzSESNCPBT9KAFjqi2rcIYZRPgYmzDQ9xDLSz4%2FGsCPIE%2BNkWrTJy%2FhRrRthpVyJJExbnmG2I%2B6x%2BT%2FHxYyQkzQfJGlufpWy6bYlvPUEgu%2BHlHJA5boo7rE3blnBR7r6mv%2BvCBMYEag%2Faqsyr1%2BIk5a%2Fd2z9zGBDpZ31qulCWk9443Hfg5BuJJAgxAG0ZBEmS4DZ7RKIliMVi0d8UvRUCeuPoNAf4Z%2FmgV13pAwiwR3iffFKBQJM5noB%2F6Y5h45v7Wwf0cDtD1DlMIeiugWmZOy5Cv3RgjX7%2FF4GdMXasOjgurmqdafqpojltml9IjvOJ8NMu9lNL5gQmXdMu0BTefz8loMyoJvivs3VMZvhpjqaig%2FZ8gwJGYIsIKRh%2FY4wh%2Bg%2FGQoxYbREgZ%2BB3uww1V3xKgN%2BrwCNtF4Pvx8NveQCEYX%2BAukhCIYuHZLy%2FyDjHbJQfo7PTK1dEBWqPBX2vS%2B2hNW1XquDURypiwXStCjVWuyrSKQC%2FdoUaHtOT2HENoyal4b40x7rK7ylip9NIV3Jy0P6fD24fl3Ra6uoe3PNqOH2Pw3x%2FC8K8CHIU%2BIpQ7OI8yNOJ9TMJO%2FAU9Nn6PjRiGmm%2FpwgsRLQpKjwjuU%2Fz1CQK0R4G4T4%2FwCHWYKlmcA6xr4SA2EzobXeUa9vh21LgpdKxK8hqd5RsaXWS7S9YvlhU2O7ya3ekXrm%2B9lK3KzFH6a4y5V92Ve5hkM4d02EShMestZekE2IxZX7MWdkAgBtmsi9U2lXEwliAOK%2BGLTowThWIZkrEVSSKYgegPOUxwtFmdaBGLsRgg2qeKtosQDh2GYzbisUIEaPvcQ8T5VGzCKowBk2I3mTVALe4wd4tumKcoaZirSKte4RtVrvXwLrw%2BJXV%2F18Ts3BtLEmOaS0yRtRdMfpGJhTKNMbDJWR5V7eEbUNDtcIQAd1PJMwnuJl6E9KQHY7AAHkzQoBkj8B%2B%2FpTWQ4Maezne1P3x1esLBuqmB%2BbccNhJMGetbM%2BGZIi1V%2FoRyOXB77sKVWuPmrd4RBvYQm9ihVue%2F7xDPGljB50MoJmO%2By36gCGsQovCyCGwOarD9R7PLLXZOJjKZvse%2FDQQSvffG7F1rWrZPiLKUX2DPr1hbfHAKb0kDBSeTed5MQj94Pn1xBMvA%2B2IDYTAkcXzXANPRjHq04ACeFeH9aAIcBC3LOq%2FY5pPDeYtO4yRTmzUhbx9LozCEea8ybaHoxDNmVtPltxSVzxhCm3Asg4Tvs683Aa5wwkD8qP9XbgQqUbb6Tp09U5Os3rWiV4jZv2OuvxPdvht70RfST8fjATZd7P33OYzxZ%2FdF7FwcgqPU0yMR2vMYDulpDfBvw%2BGCdBePpq8AAAAASUVORK5CYII%3D)](http://dx.doi.org/10.6084/m9.figshare.12073065)

<!-- badges: end -->

Repositori ini merupakan [RStudio
Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
(lihat [Wickham & Grolemund 2017](#ref-wickham_r_2017), Bab 8) untuk
makalah yang telah terbit pada jurnal [*Linguistik
Indonesia*](http://ojs.linguistik-indonesia.org/index.php/linguistik_indonesia)
([Rajeg 2020a](#ref-rajeg_linguistik_2020); untuk naskah *preprint*,
lihat [Rajeg 2020b](#ref-Rajeg2020)). Struktur R Project ini berisi data
dan [R Markdown Notebook](https://rmarkdown.rstudio.com/lesson-10.html):

> Rajeg, Gede Primahadi Wijaya. 2020. Linguistik korpus kuantitatif dan
> kajian semantik leksikal sinonim emosi bahasa Indonesia. *Linguistik
> Indonesia* 38(2). 123–150. <https://doi.org/10.26499/li.v38i2.155>.

Apabila Anda menggunakan data dan/atau R code dalam repositori ini,
selain mengutip makalah aslinya ([Rajeg
2020a](#ref-rajeg_linguistik_2020)), berikut ini sitiran terkait (dengan
gaya *Unified Style Sheet for Linguistics*) yang perlu dikutip dalam
makalah/presentasi/publikasi Anda:

-   Rajeg, Gede Primahadi Wijaya. 2020. Data dan R Notebook untuk
    *Linguistik korpus kuantitatif dan kajian semantik leksikal sinonim
    emosi bahasa Indonesia*. figshare.
    <https://doi.org/10.6084/m9.figshare.12073065.v1>.

-   Rajeg, Gede Primahadi Wijaya. 2019. *happyr: The accompanying R
    package for Rajeg’s (2019) PhD thesis titled “Metaphorical profiles
    and near-synonyms: A corpus-based study of Indonesian words for
    Happiness.”* R. <https://doi.org/10.26180/5be404d6336da>.
    <https://gederajeg.github.io/happyr>.

-   Rajeg, Gede Primahadi Wijaya. 2019. *Metaphorical profiles and
    near-synonyms: A corpus-based study of Indonesian words for
    happiness*. Clayton, VIC: Monash University, Australia PhD thesis.
    <https://doi.org/10.26180/5cac231a97fb1>.

Data utama makalah ini berasal dari modul R
[*happyr*](https://gederajeg.github.io/happyr/) ([Rajeg
2019a](#ref-happyr2019)) yang merupakan material pendamping dari tesis
PhD penulis tentang metafora sinonim KEBAHAGIAAN Bahasa Indonesia
([Rajeg 2019b](#ref-rajeg_metaphorical_2019)).

Folder `data` dalam repositori ini ([Rajeg 2020c](#ref-rajeg_data_2020))
berisi database tambahan untuk:

1.  sitiran kalimat penuh di mana kolokat dari sinonim KEBAHAGIAAN yang
    dikaji muncul
2.  daftar *stopwords* yang disaring sebelum melakukan analisis kolokat
    dengan Analisis Koleksem Khas Berganda (*Multiple Distinctive
    Collexeme Analysis*)
3.  tabel ukuran jumlah kata masing-masing korpus Bahasa Indonesia
    Leipzig yang digunakan, dan
4.  frekuensi kemunculan sinonim KEBAHAGIAAN yang dikaji
5.  luaran lengkap dari MDCA terhadap semua kolokat dan sinonimnya
    (nominalisasi dan akar kata)

Berkas-berkas data tersebut terintegrasi dengan R Markdown Notebook yang
berisi kode pemrograman R ([R Core Team 2020](#ref-rcore2020)) yang
digunakan untuk analisis dalam makalah ini ([Rajeg
2020c](#ref-rajeg_data_2020)). Modul R lain yang mesti di-install untuk
menjalankan semua kode dalam R Notebook tersebut ialah
[*tidyverse*](https://www.tidyverse.org) ([Wickham et al.
2019](#ref-wickham_welcome_2019)), dan aplikasi pendamping R, yaitu
[RStudio](https://rstudio.com).

## Daftar Pustaka

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-rcore2020" class="csl-entry">

R Core Team. 2020. *R: A language and environment for statistical
computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

</div>

<div id="ref-rajeg_metaphorical_2019" class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2019b. *Metaphorical profiles and
near-synonyms: A corpus-based study of indonesian words for HAPPINESS*.
Clayton, VIC: Monash University, Australia PhD thesis.
https://doi.org[10.26180/5cac231a97fb1](https://doi.org/10.26180/5cac231a97fb1).

</div>

<div id="ref-happyr2019" class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2019a. *Happyr: The accompanying r package
for rajeg’s (2019) PhD thesis titled "metaphorical profiles and
near-synonyms: A corpus-based study of indonesian words for happiness"*.
https://doi.org[10.5281/zenodo.3559457](https://doi.org/10.5281/zenodo.3559457).
<https://gederajeg.github.io/happyr> (2 December, 2019).

</div>

<div id="ref-rajeg_linguistik_2020" class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2020a. Linguistik korpus kuantitatif dan
kajian semantik leksikal sinonim emosi bahasa Indonesia. *Linguistik
Indonesia* 38(2). 123–150.
https://doi.org[10.26499/li.v38i2.155](https://doi.org/10.26499/li.v38i2.155).
<http://ojs.linguistik-indonesia.org/index.php/linguistik_indonesia/article/view/155>.

</div>

<div id="ref-Rajeg2020" class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2020b. <span class="nocase">Linguistik
Korpus Kuantitatif dan Kajian Semantik Leksikal Sinonim Emosi Bahasa
Indonesia</span>. {Preprint}.
https://doi.org[10.6084/m9.figshare.12012369.v1](https://doi.org/10.6084/m9.figshare.12012369.v1).

</div>

<div id="ref-rajeg_data_2020" class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2020c. Data dan r notebook untuk
*Linguistik korpus kuantitatif dan kajian semantik leksikal sinonim
emosi bahasa indonesia*. *figshare*.
https://doi.org[10.6084/m9.figshare.12073065.v1](https://doi.org/10.6084/m9.figshare.12073065.v1).

</div>

<div id="ref-wickham_welcome_2019" class="csl-entry">

Wickham, Hadley, Mara Averick, Jennifer Bryan, Winston Chang, Lucy
McGowan, Romain François, Garrett Grolemund, et al. 2019. Welcome to the
tidyverse. *Journal of Open Source Software* 4(43). 1686.
https://doi.org[10.21105/joss.01686](https://doi.org/10.21105/joss.01686).
<https://joss.theoj.org/papers/10.21105/joss.01686> (18 December, 2019).

</div>

<div id="ref-wickham_r_2017" class="csl-entry">

Wickham, Hadley & Garrett Grolemund. 2017. *R for data science*. Canada:
O’Reilly. <http://r4ds.had.co.nz/> (7 March, 2017).

</div>

</div>
