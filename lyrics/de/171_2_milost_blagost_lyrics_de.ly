

\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gnade, Güte" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Gnade, Güte flößte Er mir ein."
          "Gnade, Güte flößte Er mir ein, flößte Er mir ein, flößte Er mir ein."
        }
      }

    }\hspace #0.1
  }
}
