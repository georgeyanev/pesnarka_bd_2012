\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Der Freiheit bedarf die Seele." }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { "Der Freiheit bedarf die Seele." }
  \line { "Der Freiheit bedarf die Seele, die Seele, die Seele. " }

  }
}
