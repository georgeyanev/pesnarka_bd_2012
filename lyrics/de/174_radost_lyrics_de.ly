\version "2.26.0"

\markup \fill-line { \fontsize #deTitleFontSize "Freude" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Freude, Freude, Freude für mein Leben,"
          "du erfreust mein Herz,"
          "du erfreust mein Herz. (* du erfreust meine Seele.)"
        }
      }
    }\hspace #0.1
  }
}
