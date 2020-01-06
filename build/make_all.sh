#!/bin/bash

cat ../016_zorata_na_noviya_zhivot.ly \
    ../018_izlyazal_e_seyach.ly \
    ../020_bratstvo_edinstvo.ly \
    ../021_shte_se_razveselya.ly \
    ../022_izgryava_den_tarzhestven.ly \
    ../024_blagoslavyay.ly \
    ../025_sabudi_se_bratko.ly \
    ../026_lyubovta_e_izvor.ly \
    ../028_stani_stani.ly \
    ../029_stradna_dusho.ly \
    ../030_izgrey_ti_moe_slantse.ly \
    ../032_shumi.ly \
    ../034_pri_iztochnika.ly \
    ../036_napred_da_hodim.ly \
    ../037_na_Uchitelya.ly \
    ../038_milosardieto.ly \
    ../039_sardechen_zov.ly \
    ../040_blagosloven_Gospod.ly \
    ../041_za_nebesniya_tsar.ly \
    ../042_vreme_e_da_varvim.ly \
    ../044_pozdrav_na_Uchitelya.ly \
    ../045_sine_moy_pazi_zhivota.ly \
    ../046_rosna_kapka.ly \
    ../047_аz_sam_byaloto_kokiche.ly \
    ../048_napred_chada_napred.ly \
    ../049_slaveycheta_gorski.ly \
    ../050_nebeto_se_otvarya.ly \
    ../051_o_Uchitelyu_blagati.ly \
    ../052_darzost_v_Hrista.ly \
    ../053_slava_Bozhiya.ly \
    ../054_kam_sion.ly \
    ../055_1_slantseto_na_lyubovta.ly \
    ../055_2_ti_si_proyavenata_lyubov.ly \
    ../056_1_idvat_dni_na_radost.ly \
    ../056_2_kam_rila.ly \
    ../057_psalom_91.ly \
    ../058_na_beliya_tsvyat.ly \
    ../060_na_Hrista_zapeyte.ly \
    ../062_novi_drehi.ly \
    ../063_dishay_dalboko.ly \
    ../064_angel_vopiyashe.ly \
    ../066_1_taynata_vecherya.ly \
    ../066_2_tebe_poem.ly \
    > tmp.ly

lilypond -o pesn_all tmp.ly
