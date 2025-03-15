\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sonnenlied – kleines Bienchen" }

% \markup \fill-line { \fontsize #deTitleFontSize "Sonnenlied – kleines Bienchen" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Es ist schon Frühling, hell und warm ist es  überall:"

          "Die Sonne scheint – ja, der Frühling ist gekommen!"

          "Die Freude sprudelt in unserem Bienenstock: ban."

          "Alle eilen hinaus."

          "Sie nehmen den blumigen Frühlingsduft wahr,"

          "sie fliegen geschwind zur aufgegangenen Blüte."

          "Mit Freude sammeln sie den Pollen ein"

          "und tragen ihn zur aufgegangenen Blüte."

          "Die Freude sprudelt in unserem Bienenstock: băn."

          "Alle eilen hinaus."

          " Băn, zăn, băn, zăn, einen süßen Honig bereiten wir für euch,"

          "liebet den gütigen Schöpfer."

          "Liebet den gütigen Schöpfer,"
          
          " lasst uns unseren großen, guten Schöpfer lieben!"

          "Băn! Zăn! Băn! Zăn!"
        }
      }
    }\hspace #0.1
  }
}
