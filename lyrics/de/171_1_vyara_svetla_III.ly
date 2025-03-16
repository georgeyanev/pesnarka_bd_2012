

\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube III" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Lichter Glaube, starker Glaube!"

"Er stützt den Geist,"

"der das Leben gebiert"
        }
      }
      
    }\hspace #0.1
  }
}
