\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Fünfter göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         " Und Gott sprach: Es sollen entstehen im Wasser"
         "Fische und Meeresungeheuer, und Vögel sollen"
         "fliegen auf der Erde unter der Himmelsweite,"
         "ein jeder nach seiner Art. Und es ward so. "
         " Und Gott sah, dass alles gut war."
         "Und Gott segnete sie."
         " Und es ward Abend und es ward Morgen, der fünfte Tag."
        }
      }
      
    }\hspace #0.1
  }
}
