\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Freiheit bedarf die Seele." }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

   \line { "Der Freiheit bedarf die Seele. " }

  }
}
