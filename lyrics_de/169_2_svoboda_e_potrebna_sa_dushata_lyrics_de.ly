\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Freiheit bedarf die Seele." }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

   \line { "Der Freiheit bedarf die Seele. " }

  }
}
