\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Brief" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Wenn die Liebe herrscht,"
          "entsteht keine Unruhe."
          "Wenn die Weisheit regiert,"
           "wird die Ordnung nicht gestört."
          "Wenn die Wahrheit scheint,"
           "gedeiht und reift die Frucht."
        }
      }
    }\hspace #0.1
  }
}
