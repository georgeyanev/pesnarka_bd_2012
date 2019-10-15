#!/bin/bash

cat ../lyrics_de/016_zorata_na_noviya_zhivot_lyrics_de.ly \
    ../lyrics_de/018_izlyazal_e_seyach_lyrics_de.ly \
    ../lyrics_de/020_bratstvo_edinstvo_lyrics_de.ly \
    ../lyrics_de/021_shte_se_razveselya_lyrics_de.ly \
    ../lyrics_de/022_izgryava_den_tarzhestven_lyrics_de.ly \
    ../lyrics_de/024_blagoslavyay_lyrics_de.ly \
    ../lyrics_de/025_sabudi_se_bratko_lyrics_de.ly \
    ../026_lyubovta_e_izvor_lyrics_de.ly \
    ../lyrics_de/028_stani_stani_lyrics_de.ly \
    ../lyrics_de/029_stradna_dusho_lyrics_de.ly \
    ../lyrics_de/030_izgrey_ti_moe_slantse_lyrics_de.ly \
    ../lyrics_de/032_shumi_lyrics_de.ly \
    ../lyrics_de/034_pri_iztochnika_lyrics_de.ly \
    ../lyrics_de/036_napred_da_hodim_lyrics_de.ly \
    ../lyrics_de/037_na_Uchitelya_lyrics_de.ly \
    ../lyrics_de/038_milosardieto_lyrics_de.ly \
    > lyrics_de_tmp.ly

lilypond -o lyrics_pesn_all lyrics_de_tmp.ly
