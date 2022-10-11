\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ich werde mich erfreuen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " " }

    \line { "   " Ich werde mich sehr um des Herrn willen freuen; }
    \line {
      "   " meine Seele wird fröhlich sein in meinem
      Gott:
    }
    \line {
      "   " Denn Er hat mich mit den Gewändern
      des Heils bekleidet,
    }
    \line {
      "   " mich mit dem Mantel der Gerechtigkeit
      umhüllt, (2)
    }
    \line {
      "   " wie ein Bräutigam mit Kopfschmuck
      geziert,
    }
    \line {
      "   " wie eine Braut mit ihrem Geschmeide
      geschmückt,
    }
    \line {
      "   "wie eine Jungfrau, auserwählt unter
      ihren Gefährtinnen.
    }

  }

}
