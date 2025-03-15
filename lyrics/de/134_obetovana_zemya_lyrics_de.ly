\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das gelobte Land" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Tage des Leides und des Kummers"
          "haben meine Seele durchdrungen,"
          "Wogen und Stürme haben sie überschwemmt."
          "Aber mein Geist des Lebens"
          "hat sich mit Kraft und Stärke über sie erhoben."
          "Ins Gelobte Land bin ich"
          "als Reisender aufgebrochen  –"
          "dorthin, wo die Quellen sprudeln,"
          "wo die Flüsse fließen,"
          "wo die Früchte reifen,"
          "wo die Vögel singen."
          "Dort, wo die Menschen brüderlich leben;"
          "dort, wo die Liebe herrscht."
        }
      }
    }\hspace #0.1
  }
}
