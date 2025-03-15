\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein Tag wird kommen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ein Tag wird kommen, ein Tag wird kommen,"
          "ein Tag wird kommen, ein Tag wird kommen."
          "Er wird ein lichter Tag sein, er wird ein lichter Tag sein,"
          "er wird ein lichter Tag sein."
          "Säe, säe! Baue, Baue, baue errichte gut! (*errichte Gutes!)}"
          "Und die Freude wird dich gut belohnen."
        }
      }
    }\hspace #0.1
  }
}
