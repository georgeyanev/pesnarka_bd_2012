\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann atmen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Ich kann schon gut atmen, ich kann schon gut atmen."
        }
      }
      
    }\hspace #0.1
  }
}
