\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir, du heller göttlicher Strahl" }

\markup \null
\markup \null
\markup \abs-fontsize #11 {
 \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Sage mir, du heller, göttlicher Strahl, das Gute des Lebens, }
    \line { " " den leuchtenden geraden Weg der reinen Seelen,}
    \line { " " der reinen Seelen, der reinen Seelen, der reinen Seelen.}
  }
 }
}
