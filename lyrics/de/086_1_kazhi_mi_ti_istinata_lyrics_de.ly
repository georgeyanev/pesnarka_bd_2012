\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sag Du mir die Wahrheit" }

\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Sag Du mir die Wahrheit, die Freiheit für meine Seele bringt."
        }
      }

    }\hspace #0.1
  }
}

