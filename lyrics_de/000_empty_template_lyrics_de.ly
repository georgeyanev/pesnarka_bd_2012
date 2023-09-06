\version "2.24.2"

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
