\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Abend, Morgen, es ging, es kam. Abend, Morgen, es ging, es kam."
          "Es ging, es kam, es ging, es kam, es ging, es kam, es kam."
        }
      }

    }\hspace #0.1
  }
}
