\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize  "Ich werde mich erfreuen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ich werde mich sehr um des Herrn willen erfreuen;"
          "meine Seele wird sich erfreuen in meinem Gott:"
          "Denn Er hat mich bekleidet mit den Gewändern des Heils,"
          "mich umhüllt mit dem Mantel der Gerechtigkeit,"
          "mich umhüllt mit dem Mantel der Gerechtigkeit,"
          "wie ein Bräutigam, geziert mit dem Kopfschmuck,"
          "wie eine Braut, geschmückt mit ihrem Geschmeide,"
          "wie eine Jungfrau, auserwählt unter ihren Gefährtinnen."
        }
      }

    }\hspace #0.1
  }
}
