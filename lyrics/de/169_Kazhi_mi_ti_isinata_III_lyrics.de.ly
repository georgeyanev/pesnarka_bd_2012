\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Sage du mir die Wahrheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Sage du mir die Wahrheit, }

\line { " " die Freiheit bringt für meine Seele.}

    \line { " " Sage du mir die Wahrheit, }

\line { " " die Freiheit bringt für meine Seele.}

  }
}
