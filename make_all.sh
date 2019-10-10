#!/bin/bash

cat 016_zorata_na_noviya_zhivot.ly \
    018_izlyazal_e_seyach.ly \
    020_bratstvo_edinstvo.ly \
    021_shte_se_razveselya.ly \
    > 1_tmp_all.ly

lilypond -o \-pesn_all 1_tmp_all.ly 

rm 1_tmp_all.ly
