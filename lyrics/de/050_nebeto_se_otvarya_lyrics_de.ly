\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Himmel öffnet sich" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Der Himmel öffnet sich"
          "und die Engel singen."
          "Leuchtende Blitze"
          "zerstreuen Dunkelheit und Finsternis."
        }
      }

      \vspace #1
      \line {
        \bold "2."
        \column {
          "Christus kommt herab"
          "in sein Reich,"
          "mit Macht und Kraft,"
          "in all seiner Herrlichkeit."
        }
      }
    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold "3."
        \column {
          "Kommt, alle Brüder,"
          "ganz in Weiß gekleidet,"
          "auf dass wir ihn mit Freude,"
          "feierlich und glorreich"
          "willkommen heißen."
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Er kommt auf die Erde,"
          "um ewiglich zu herrschen"
          "und allen ein Leben"
          "in Wahrheit zu schenken."
        }
      }
      % adds vertical spacing between verses
    }\hspace #0.1
  }
}



\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {

      \vspace #1
      \line {
        \bold "5."
        \column {
          "Gepriesen sei das Reich"
          "unseres dreifaltigen Gottes,"
          "von nun an und in Ewigkeit"
          "und für alle Zeiten."
        }
      }
    }\hspace #0.1
  }
}

