\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Frühling" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Hört die Stimme dieses Liedes, die der Frühling schon verbreitet."
          "Sie ist eine große Gabe für das Leben, sie ist eine große Gabe für das Leben."
        }
      }
    }\hspace #0.1
  }
}
