\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "An die weiße Farbe" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Hinauf, steigen wir immer weiter"
          "zu den weißen Gipfeln,"
          "grüßen wir den weißen Äther"
          "und die Schneekristalle."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      \line {
        "   "
        \column {
          "Die Schönheit der göttlichen Welt,"
          "das Weiße, unsere Farbe  –"
          "hat ewige Kraft,"
          "die Finsternis ergreift sie nicht."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Hinauf immer weiter! Dort blüht "
          "die weiße Alpenrose,"
          "die Morgenröte ergoss  "
          "die weiße Farbe in diese Rose."
        }
      }
      \vspace #1
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
          "Hinauf! Eine weiße Sonne wird heute"
          "von Osten aufgehen  –"
          "das lebendige Emblem für jene,"
          "in denen Gott lebt."
        }
      }
      \vspace #1
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
          "Hinauf – in dieses Weiß!"
          "Es wird alles ausfüllen"
          "und die tödliche Dunkelheit"
          "in weißen Tag verwandeln."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "5."
        \column {
          "Wir werden die Erde verschönern,"
          "wir werden sie zum Paradies machen;"
          "wir werden den Himmel erfreuen"
          "und Gott lobpreisen."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
    }\hspace #0.1
  }
}
