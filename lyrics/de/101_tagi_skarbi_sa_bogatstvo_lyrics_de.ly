\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Trauer und Leid sind Reichtum" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Trauer und Leid sind Reichtum für das Leben,"
          "die in der Seele verborgen liegen,"
          "für künftige Wohltaten,"
          "für süße Früchte,"
          "für lichte Tage,"
          "für lichte Tage,"
          "für lichte Tage."
        }
      }
    }\hspace #0.1
  }
}
