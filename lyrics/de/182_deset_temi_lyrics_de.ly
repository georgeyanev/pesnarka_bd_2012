\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Thema 6 und Thema 7" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ich werde die Wärme bewahren."
          "Ich werde diese Wärme bewahren."
        }
      }
      
    }\hspace #0.1
  }
}
