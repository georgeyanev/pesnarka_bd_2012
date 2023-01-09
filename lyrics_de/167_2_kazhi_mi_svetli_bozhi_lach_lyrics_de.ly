\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir, du heller göttlicher Strahl" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " " Sage mir, du heller, göttlicher Strahl, }
    \line { " " das Gute des Lebens, }
    \line { " " den leuchtenden geraden Weg der reinen Seelen,}
    \line { " " der reinen Seelen,  der reinen Seelen,  der reinen Seelen.}
  }
}
