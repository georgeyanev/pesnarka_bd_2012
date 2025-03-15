\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "In der Wüste des Lebens" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "In der Wüste des Lebens,"
          "dort, wo Gewalt sich ausbreitet,"
          "dort herrscht Leid und Qual."
          "Jeden, mit dem sie befreundet sind,"
          "nennen sie Märtyrer, Held, Heiliger."
        }
      }
    }\hspace #0.1
  }
}
