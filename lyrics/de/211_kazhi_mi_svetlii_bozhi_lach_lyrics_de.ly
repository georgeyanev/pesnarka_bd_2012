\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir du, heller göttlicher Strahl II" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Herr, Du lebst in mir,"
          "Du lebst in mir."
          "Sage mir, heller göttlicher Strahl,"
          "sage mir du, das Gute des Lebens,"
          "der helle, gerade Weg"
          "der reinen Seelen,"
          "gewaschen in den Wassern der Liebe,"
          "der reinen Liebe."
          "Herr, Du lebst in mir,"
          "Du lebst in mir."
          "Mögen Deine gütige Stimme"
          "und Deine Barmherzigkeit, oh Herr, "
          "sich durch mich kundtun!"
        }
      }
    }\hspace #0.1
  }
}
