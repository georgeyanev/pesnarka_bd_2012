\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lauf, lauf" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
 \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Lauf, lauf, lauf,"
          "lauf um das Wasser,"
          "im Morgentau,"
          "durch ein klares Bächlein,"
          "auf dem reinen Pfad."
          "Bringe dieses klare Wasser nach Hause,"
          "zu den lieben Blümlein,"
          "seinen kleinen Kindern."
        }
      }
      
    }
    \hspace #0.1
    \column {
      \line {
        \bold "2."
        \column {
          "So bieten die Regentropfen"
          "reichlich Feuchtigkeit,"
          "den Strom des Lebens."
          "Samenkörner sprießen,"
          "Knospen öffnen sich,"
          "Früchte reifen."
          "Alles erwacht;"
          "machtvoll ist das Wasser!"
        }
      }
      \hspace #0.1
    }
  }
}
