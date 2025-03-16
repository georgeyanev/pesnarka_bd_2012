\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dritter göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Und Gott sprach: „Es sammle sich das Wasser"
         "unter dem Himmel.“ Und es geschah so."
         "Und es erschien das Trockene. Und Gott nannte es Erde."
         "und die Sammlung der Wasser nannte er Meer."
         "Und Gott sprach, und es wuchs frisches Gras,"
         "das Samen bringt, ein jedes nach seiner Art,"
         "und Bäume, die da Früchte tragen, ein jeder nach seiner Art."
         "Und Gott sah, dass alles gut war."
         "Da ward Abend und es ward Morgen, der dritte Tag."
        }
      }
    }\hspace #0.1
  }
}
