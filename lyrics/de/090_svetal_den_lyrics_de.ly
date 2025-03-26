\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Tag" }

\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Lichter Tag, lichter Tag, Tag, Tag Tag,"
          "fröhlicher Tag, fröhlicher Tag, Tag, Tag, Tag."
          "Lichter Tag, lichter Tag, göttlicher Tag,"
          "lichter Tag, lichter Tag, lichter, göttlicher Tag."
        }
      }

    }\hspace #0.1
  }
}
