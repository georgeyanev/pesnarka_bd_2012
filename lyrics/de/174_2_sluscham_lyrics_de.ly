\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich höre" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Ich höre, ich höre, ich höre, ich höre."
        }
      }
      
    }\hspace #0.1
  }
}
