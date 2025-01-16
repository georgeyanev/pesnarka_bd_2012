\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "An den Meister" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Dem Meister werde ich ergeben"
          "bis zum Ende dienen."
          "Er ist für mich ein offener Weg,"
          "der mich zum Vater führt."
          "Er ist für mich ein offener Weg,"
          "der mich zum Vater führt."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Herr, Du mein Meister,"
          "führe mich bei meinen Schritten,"
          "und wie ein mächtiger Beschützer"
          "sei immer bei mir."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Gib mir Deine heilige Weisheit"
          "und göttliche Liebe,"
          "auf dass ich für die Liebe zu all meinen Brüdern"
          "immerdar bereit bin."
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Und in Tagen der Prüfung,"
          "sei Du mir ein Fels,"
          "so werde ich für Dich leben"
          "und für Dich sterben."
        }
      }
      \vspace #1
      \line {
        \bold "5."
        \column {
          "Und wenn ich ein Bewohner"
          "der unsichtbaren Welt werde,"
          "oh, mein geliebter Meister,"
          "gib mir Deinen Segen!"
        }
      }
    }\hspace #0.1
  }
}
