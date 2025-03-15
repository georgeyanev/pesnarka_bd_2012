\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied des lichten Weges" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ich kann erreichen, was ich mir wünsche."
          "Im Leben ist alles erreichbar!"
          "Ich werde die göttlichen Güter"
          "in alle menschlichen Herzen tragen."
          "Dort, wo die Freude geboren wird,"
          "dort, wo die Liebe herrscht."
        }
      }
    }\hspace #0.1
  }
}
