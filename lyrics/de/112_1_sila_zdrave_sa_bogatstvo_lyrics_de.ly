\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Kraft und Leben sind Reichtum" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Kraft und Gesundheit sind Reichtum,"
          "Kraft und Gesundheit sind Reichtum,"
          "Kraft und Gesundheit sind Reichtum,"
          "sind Reichtum, sind Reichtum,"
          "Kraft und Gesundheit sind Reichtum,"
          "für das Leben der Seele, "
          "für das Leben der Seele."
        }
      }
    }\hspace #0.1
  }
}
