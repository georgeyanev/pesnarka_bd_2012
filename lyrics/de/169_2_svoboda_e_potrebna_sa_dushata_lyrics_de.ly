\version "2.26.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Freiheit bedarf die Seele." }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Der Freiheit bedarf die Seele."
          "Der Freiheit bedarf die Seele, die Seele, die Seele."
          "Sie befindet sich nur in der Liebe."
          "Das ist nur für die Seele"
        }
      }

    }\hspace #0.1
  }
}
