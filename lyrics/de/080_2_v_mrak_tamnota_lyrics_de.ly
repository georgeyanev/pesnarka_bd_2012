\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "In der Finsternis, in der Dunkelheit" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Das Leben war in Finsternis und Dunkelheit."
          "Aber die Sonne des Lebens leuchtete auf in uns."
          "Und wir gingen auf den Weg, rein und heilig für uns."
          "Und wir gingen auf den Weg, rein und heilig für uns."
          "Rein und heilig für uns,"
          "rein und heilig für uns,"
          "rein und heilig für uns."
        }
      }

    }\hspace #0.1
  }
}
