#!/bin/bash

cat ../016_zorata_na_noviya_zhivot.ly \
    ../018_izlyazal_e_seyach.ly \
    ../020_bratstvo_edinstvo.ly \
    ../021_shte_se_razveselya.ly \
    ../022_izgryava_den_tarzhestven.ly \
    ../024_blagoslavyay.ly \
    ../025_sabudi_se_bratko.ly \
    ../026_lyubovta_e_izvor.ly
    > tmp.ly

lilypond -o pesn_all tmp.ly
