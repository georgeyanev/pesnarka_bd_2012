\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sage du mir die Wahrheit III" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Sage du mir die Wahrheit,"
          "die Freiheit bringt für meine Seele."
          "Sage du mir die Wahrheit,"
          "die Freiheit bringt für meine Seele."
        }
      }
      
    }\hspace #0.1
  }
}
