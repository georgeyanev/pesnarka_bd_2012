\version "2.20.0"

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
