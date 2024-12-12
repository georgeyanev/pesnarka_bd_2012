\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich höre" }
\markup \null
\markup \null
\markup  \abs-fontsize #11 {
\fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " Ich höre, ich höre, ich höre, ich höre." }
  }
  }
}
