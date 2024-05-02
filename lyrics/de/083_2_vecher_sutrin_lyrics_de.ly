\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }

\markup \null
\markup \null

\markup \abs-fontsize #10 {
\hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {

    \line { "   " Abend, Morgen, es ging, es kam. Abend, Morgen, es ging, es kam.}
    \line { "   " Es ging, es kam, es ging, es kam, es ging, es kam, es kam.}

  }
}
