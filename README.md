
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Data dan R Notebook untuk “Linguistik Korpus Kuantitatif dan Kajian Semantik Leksikal Sinonim Emosi Bahasa Indonesia”

<!-- badges: start -->

[![CC
BY-NC-SA 4.0](https://img.shields.io/badge/lisensi-CC%20BY--NC--SA%204.0-informational.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

[Gede Primahadi Wijaya
Rajeg](https://figshare.com/authors/Gede_Primahadi_Wijaya_Rajeg/1234749)
<a itemprop="sameAs" content="https://orcid.org/0000-0002-2047-8621" href="https://orcid.org/0000-0002-2047-8621" target="orcid.widget" rel="noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

Data dan R Notebook ini berlisensi [*Creative Commons
Attribution-NonCommercial-ShareAlike 4.0
International*](https://creativecommons.org/licenses/by-nc-sa/4.0/).

[![CC
BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

<!-- badges: end -->

Repositori ini merupakan [RStudio
Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
(lihat Wickham & Grolemund [2017](#ref-wickham_r_2017), Bab 8) untuk
makalah yang sedang menjalani proses “tinjauan sejawat”/*peer-review* di
jurnal [*Linguistik
Indonesia*](http://ojs.linguistik-indonesia.org/index.php/linguistik_indonesia))
(untuk naskah *pre-print*, lihat Rajeg [2020](#ref-Rajeg2020)). Struktur
R Project ini berisi data dan [R Markdown
Notebook](https://rmarkdown.rstudio.com/lesson-10.html).

Data utama makalah ini berasal dari modul R
[*happyr*](https://gederajeg.github.io/happyr/) (Rajeg
[2019](#ref-happyr2019)[a](#ref-happyr2019)) yang merupakan material
pendamping dari tesis PhD penulis tentang metafora sinonim KEBAHAGIAAN
Bahasa Indonesia (Rajeg
[2019](#ref-rajeg_metaphorical_2019)[b](#ref-rajeg_metaphorical_2019)).

Folder `data` dalam repositori ini berisi database tambahan untuk:

1.  sitiran kalimat penuh di mana kolokat dari sinonim KEBAHAGIAAN yang
    dikaji muncul
2.  daftar *stopwords* yang disaring sebelum melakukan analisis kolokat
    dengan Analisis Koleksem Khas Berganda (*Multiple Distinctive
    Collexeme Analysis*)
3.  tabel ukuran jumlah kata masing-masing korpus Bahasa Indonesia
    Leipzig yang digunakan, dan
4.  frekuensi kemunculan sinonim KEBAHAGIAAN yang dikaji

Berkas-berkas data tersebut terintegrasi dengan R Markdown Notebook yang
berisi kode pemrograman R (R Core Team [2020](#ref-rcore2020)) yang
digunakan untuk analisis dalam makalah. Modul R lain yang mesti
di-install untuk menjalankan semua kode dalam R Notebook tersebut ialah
[*tidyverse*](https://www.tidyverse.org) (Wickham et al.
[2019](#ref-wickham_welcome_2019)), dan aplikasi pendamping R, yaitu
[RStudio](https://rstudio.com).

## Daftar Pustaka

<div id="refs" class="references">

<div id="ref-happyr2019">

Rajeg, Gede Primahadi Wijaya. 2019a. *Happyr: The accompanying r package
for rajeg’s (2019) PhD thesis titled "metaphorical profiles and
near-synonyms: A corpus-based study of indonesian words for happiness"*.
<https://doi.org10.5281/zenodo.3559457>.
<https://gederajeg.github.io/happyr> (2 December, 2019).

</div>

<div id="ref-rajeg_metaphorical_2019">

Rajeg, Gede Primahadi Wijaya. 2019b. *Metaphorical profiles and
near-synonyms: A corpus-based study of indonesian words for happiness*.
Clayton, VIC: Monash University, Australia PhD thesis.
<https://doi.org10.26180/5cac231a97fb1>.

</div>

<div id="ref-Rajeg2020">

Rajeg, Gede Primahadi Wijaya. 2020. Linguistik Korpus Kuantitatif dan
Kajian Semantik Leksikal Sinonim Emosi Bahasa Indonesia. Pre-print.
<https://doi.org10.6084/m9.figshare.12012369.v1>.

</div>

<div id="ref-rcore2020">

R Core Team. 2020. *R: A language and environment for statistical
computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

</div>

<div id="ref-wickham_welcome_2019">

Wickham, Hadley, Mara Averick, Jennifer Bryan, Winston Chang, Lucy
McGowan, Romain François, Garrett Grolemund, et al. 2019. Welcome to the
tidyverse. *Journal of Open Source Software* 4(43). 1686.
<https://doi.org10.21105/joss.01686>.
<https://joss.theoj.org/papers/10.21105/joss.01686> (18 December, 2019).

</div>

<div id="ref-wickham_r_2017">

Wickham, Hadley & Garrett Grolemund. 2017. *R for data science*. Canada:
O’Reilly. <http://r4ds.had.co.nz/> (7 March, 2017).

</div>

</div>
