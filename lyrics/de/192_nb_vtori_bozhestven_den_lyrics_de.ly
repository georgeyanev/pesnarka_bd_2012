\version "2.24.4"


\markup \fill-line { \fontsize #deTitleFontSize "Zweiter göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Und Gott sprach: „Es werde Weite zwischen den Wassern.“"
         "Und da machte Gott die Weite und schied Gott das Wasser"
         "über der Weite von dem Wasser unter der Weite."
         "Und es geschah so."
         "Und Gott nannte die Weite Himmel."
         "Und es ward Abend und es ward Morgen, der zweite Tag."
        }
      }
    }\hspace #0.1
  }
}
