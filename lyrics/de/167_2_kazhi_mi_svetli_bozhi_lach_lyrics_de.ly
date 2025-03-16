\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir, du heller göttlicher Strahl" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Sage mir, du heller göttlicher Strahl, das Gute des Lebens,"
          "den leuchtenden geraden Weg der reinen Seelen,"
          "der reinen Seelen, der reinen Seelen, der reinen Seelen."
        }
      }
      
    }\hspace #0.1
  }
}
