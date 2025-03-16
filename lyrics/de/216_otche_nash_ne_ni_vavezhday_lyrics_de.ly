\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Vater unser, führe uns nicht in Versuchung" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Ich werde die Wärme meines Herzens bewahren,"
         "die die göttlichen Güter in meine Seele bringt."
         "Herr, führe uns nicht in Versuchung,"
         "führe uns nicht in Versuchung."
        }
      }
      
    }\hspace #0.1
  }
}
