\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann atmen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #21
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Ich kann schon gut atmen, }

\line { " "ich kann schon gut atmen.}

  }
}
