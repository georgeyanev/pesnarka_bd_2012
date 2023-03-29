\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }

\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)



  \column {
    \line { "   " Abend, Morgen, es ging, es kam. }
    \line { "   " Abend, Morgen, es ging, es kam.}
     \line { "   " }
    \line { "   " Es ging, es kam,}
    \line { "   " es ging, es kam,}
    \line { "   " es ging, es kam, es kam.}

  }
}
