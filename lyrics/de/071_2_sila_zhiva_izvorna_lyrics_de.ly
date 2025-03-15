\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lebendinge, quellende fließende Kraft" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Lebendige, quellende, fließende Kraft,"
          "lebendige, quellende, fließende Kraft."
          "Zun me zun, Zun me zun binom tu meto."
          "Zun me zun, Zun me zun binom tu meto."
        }
      }

    }\hspace #0.1
  }
}
