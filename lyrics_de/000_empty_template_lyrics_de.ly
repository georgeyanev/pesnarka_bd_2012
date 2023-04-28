\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Zaglavie DE" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " Song DE" }

  }
}
