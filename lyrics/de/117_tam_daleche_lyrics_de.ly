
\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dort in der Ferne" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Dort, in der Ferne, kenne ich einen wunderbaren Ort:"

          "Sonne, Blumen und Früchte,  eine Quelle sprudelt – es ist ein Paradiesgarten."

          "Du, sage mir, was du weißt, über die Heimat, paradiesische Erde,"

          "wo der taubedeckte Kirschbaum blüht und reift."

          "Zu diesem schönen Ort zeige mir einen Weg."

          "Pflücke nur die reife Frucht, ohne den jungen Trieb zu brechen."

          "Pflücke dir reichlich Früchte und bringe sie allen mit Freude!"
        }
      }
    }\hspace #0.1
  }
}


