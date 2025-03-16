\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Hätte ich auf Dich gehört" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Hätte ich auf Dich gehört, hätte ich auf Dich gehört,"
          "wenn ich auf dich gehört hätte,"
          "hätte sich das Gute in mir manifestiert,"
          "hätte sich das Gute in mir offenbart."
        }
      }
      
    }\hspace #0.1
  }
}
