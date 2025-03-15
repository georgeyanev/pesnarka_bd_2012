\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Blumen erblühten" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Die Blumen erblühten unter den Strahlen der Sonne, und schon trugen sie Früchte."

          "Und so, gekleidet in Schönheit und so, gekleidet in Reinheit,"

          "bringen sie uns die Jugend. In ihr reifen süße Früchte."

          "Und so, wenn wir sie empfangen, erkennen wir, dass sie Gaben Gottes sind;"

          "und so, wenn wir sie empfangen, erkennen wir, dass sie eine Gabe der Liebe sind!"
        }
      }
    }\hspace #0.1
  }
}
