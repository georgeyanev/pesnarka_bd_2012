\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gruß an den Meister" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Gesegnet bist du von Gott,"
          "oh Meister der Liebe,"
          "denn gerade in diesen Tagen"
          "hast du Frieden und Licht gebracht."
        }
      }
      \vspace #0.5
      \line { \italic"    Refrain:"}
      \line {
        "   "
        \column {
          "Sei willkommen, sei willkommen,"
          "Meister der Liebe;"
          "sei willkommen, sei willkommen,"
          "Meister der Weisheit!"
        }
      }
      \vspace #0.5
      \line {
        \bold "2."
        \column {
          "Bis zu dieser Stunde von Dunkelheit eingehüllt,"
          "waren wir Sklaven der Sünde,"
          "aber wir haben deine sanfte Stimme gehört,"
          "und Wärme hauchte uns an."
        }
      }
      \vspace #0.5
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "3."
        \column {
          "Gesegneter Meister,"
          "du hast unsere Herzen erneuert,"
          "du hast in uns ein heiliges Feuer entfacht"
          "und die süßen Worte zum Leben erweckt."
        }
      }
      \vspace #0.5
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "4."
        \column {
          "Meister, unser geschätzter Gast,"
          "empfange unseren Gruß;"
          "mit Freude sind wir bereit,"
          "unser Leben zu opfern."
        }
      }
    }
    \hspace #0.1
  }
}
