\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lebendige Kraft" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Lebendige Kraft, lebendige Kraft,"
          "sage mir, sage mir,"
          "wo das Wasser entspringt, wo das Wasser entspringt."
          "Entspringt, entspringt, wo das Wasser entspringt."
          "Sage mir, sage mir, sage mir, süße Worte zwei,"
          "deine Worte zwei,"
          "süße Worte zwei."
        }
      }

    }\hspace #0.1
  }
}
