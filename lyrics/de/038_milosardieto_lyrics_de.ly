\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Barmherzigkeit" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Die Barmherzigkeit ist ein Paradiesgarten,"
          "wunderschön geschmückt, erfüllt von der Maienschönheit;"
          "Kräuter und Bäume in Schönheit entwickelt,"
          "mit Früchten reichlich immerdar bedeckt. (2)"
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Alles Wertvolle und Holde lebt in Liebe,"
          "blüht, bildet Frucht, gedeiht und reift."
          "Im Frühling, im Sommer, im Herbst"
          "und den ganzen Winter hindurch,"
          "seitdem es Menschen auf der Erde gibt. (2)"
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Und wenn ein müder Reisender am Garten vorbeikommt,"
          "nickt ihm freundlich jedes kleine, lebendige Ästchen zu"
          "und bietet ihm uneigennützig die reifen Früchte"
          "mit aufrichtiger Wonne und gütigem Lächeln dar."
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Arme und Reiche, Gesunde oder Kranke"
          "sind zu jeder Zeit hier zufrieden,"
          "dass sie die Sorgen und das Joch in Freude verwandeln,"
          "getröstet den Sinn des Lebens sehen. (2)"
        }
      }
      \vspace #1
      \line {
        \bold "5."
        \column {
          "Deshalb sollte jener, der nach dem wahren Sieg sucht,"
          "solch ein wunderbares Paradies kultivieren."
          "Das Glück wird für ihn nicht enden,"
          "Erde und Himmel werden ihn segnen. (2)"
        }
      }
    }\hspace #0.1
  }
}
