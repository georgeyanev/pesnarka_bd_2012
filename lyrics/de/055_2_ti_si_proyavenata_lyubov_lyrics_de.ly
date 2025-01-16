\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Du bist die offenbarte Liebe zu mir" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
     
      \line {
        \bold "  "
        \column {   
      "Du bist die offenbarte Liebe zu mir, oh Herr."
      "Meine Seele sehnt sich nach Deiner Reinheit,"
      "Meine Seele sehnt sich nach Deinem Licht."
        }
      }
    }\hspace #0.1
  }
}
