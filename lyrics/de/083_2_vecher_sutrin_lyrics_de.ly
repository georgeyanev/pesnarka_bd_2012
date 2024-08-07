\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }

\markup \null
\markup \null

\markup \abs-fontsize #10 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {

    \line { "   " Abend, Morgen, es ging, es kam. Abend, Morgen, es ging, es kam.}
    \line { "   " Es ging, es kam, es ging, es kam, es ging, es kam, es kam.}
  }
  }
}
