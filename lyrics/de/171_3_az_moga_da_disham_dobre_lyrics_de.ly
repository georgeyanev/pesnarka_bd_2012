\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann atmen" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Ich kann schon gut atmen, ich kann schon gut atmen.}

  }
}
