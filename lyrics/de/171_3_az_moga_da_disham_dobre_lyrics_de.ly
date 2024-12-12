\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann atmen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
 \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Ich kann schon gut atmen, ich kann schon gut atmen.}

  }
 }
}
