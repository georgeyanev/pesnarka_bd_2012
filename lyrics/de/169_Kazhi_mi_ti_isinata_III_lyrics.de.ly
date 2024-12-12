\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sage du mir die Wahrheit III" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
   \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Sage du mir die Wahrheit, }

    \line { " " die Freiheit bringt für meine Seele.}

    \line { " " Sage du mir die Wahrheit, }

    \line { " " die Freiheit bringt für meine Seele.}
  }
  }
}
