\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne geht auf" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Die Sonne geht auf, sie sendet Licht,"
          "es bringt Freude für das Leben."
        }
      }

    }\hspace #0.1
  }
}
