\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Denke, denke recht" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Denke, denke recht!"
          "Denke, denke recht!"
          "Hege heilige Gedanken für das Leben!"
          "Hege heilige Gedanken für das Leben!"
          "Hege, hege, hege, hege heilige Gedanken für das Leben!"
        }
      }
    }\hspace #0.1
  }
}
