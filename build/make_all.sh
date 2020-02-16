#!/bin/bash

cat ../016_zorata_na_noviya_zhivot.ly \
    > tmp.ly

lilypond --include=../ -o pesn_all tmp.ly
