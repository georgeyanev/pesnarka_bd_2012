\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Du, leidende Seele" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Du, leidende Seele, die du dich sehnst:"
          "Wofür brennst und glühst du?"
          "Auf Dein Wort, oh Gott, warte ich"
          "und auf Deine reiche Barmherzigkeit;"
          "dessentwillen leide ich, nach ihnen sehne ich mich."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Und ich hungere und ich dürste,"
          "ich erwarte sie Tag und Nacht."
          "Segne mich, oh Gott,"
          "auf dass ich Dir nahe bin"
          "und Trost bei Dir finde."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Dein lichtes Antlitz schaue ich und Deine Größe,"
          "auf dass ich Dich lieben lerne."
          "In dieser Liebe zu Dir, oh Herr,"
          "möge ich machtvolle Kraft finden."
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "In den Heldentaten und der Vollkommenheit"
          "möge ich Deine Barmherzigkeit erkennen,"
          "Dein allmächtiges Geheimnis,"
          "das dem Menschen die Eitelkeit des Lebens offenbart."
        }
      }
      \vspace #1
      \line {
        \bold "5."
        \column {
          "Alles Sündige auf der Erde"
          "ist vergänglich und flüchtig."
          "Nur Du, Gott, bist ewig:"
          "Dich loben wir, Dich lobpreisen wir,"
          "Dich wird lobpreisen die Ewigkeit."
        }
      }
    }\hspace #0.1
  }
}
