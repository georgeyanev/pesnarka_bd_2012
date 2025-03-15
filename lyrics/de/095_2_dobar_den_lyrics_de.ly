\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein guter Tag" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ein guter Tag ist ein lichter Tag."
          "Schön und erhaben ist er."
          "Alles erleuchtet er, alles belebt er"
          "und teilt im Leben das göttliche Gute aus."
        }
      }

    }\hspace #0.1
  }
}
