\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich wage zu sagen" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ich wage zu sagen, dass die Sonne licht ist."
          "Ich wage zu sagen, dass die Sonne licht ist."
          "Das lässt sich nicht leugnen. Dank ihr schmilzt alles, dank ihr wächst alles,"
          "dank ihr blüht alles immer, dank ihr reift alles. Dank ihr steht alles auf,"
          "faltet seine Decken zusammen und begibt sich an die Arbeit."
        }
      }
    }\hspace #0.1
  }
}
