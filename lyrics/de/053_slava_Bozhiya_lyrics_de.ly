\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ruhm Gottes" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
  
      \line {
        \bold "  "
        \column {
          "Nicht mir, nicht mir,"
          "sondern Deinem Namen gib,"
          "oh Herr Ruhm, Ruhm, Ruhm."
        }
      }
    }\hspace #0.1
  }
}



