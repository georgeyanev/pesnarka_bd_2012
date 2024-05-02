\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ich höre" }
\markup \null
\markup \null
\markup  \abs-fontsize #10 {
  \hspace #25
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " Ich höre, ich höre, ich höre, ich höre." }

  }
}
