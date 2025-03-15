\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Kälte gibt alles" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Die Kälte gibt alles. Kalt bist du,"
          "aber schützt uns vor der Kälte."
          "Kalt bist du, aber schützt uns vor dem Frost."
          "Kalt bist du, aber schützt uns vor dem Frost."
          "Kalt bist du, aber bringst uns Reinheit."
          "Kalt bist du, aber bringst uns Reinheit."
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "Die Kälte gibt alles."
          "Sie ist der gute Diener,"
          "der von der Liebe [Ljubovta] inspiriert wird."
          "Für viele ist das verwunderlich,"
          "aber das wissen auch die Regentropfen."
          "Кalt ist sie, aber schützt uns vor der Kälte"
          "und hört immer auf die"
          "Stimme der Liebe [običta]."
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "Kalt bist du, aber rettest uns vor dem Frost"
          "und bringst nur das, was dir das Licht gibt."
          "Dein Gewand ist weiß."
        }
      }
    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold " "
        \column {
          "Kalt bist du,"
          "aber rettest uns vor dem Frost."
          "Seit Ewigkeit waren"
          "die menschlichen Herzen"
          "für dich verschlossen,"
          "da du das Alte ausziehst, das Alte,"
          "und das Neue faltest, das Neue."
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "Kalt bist du,"
          "aber rettest uns vor der Kälte."
          "Und wenn es Frühling wird"
          "und das Leben erscheint,"
          "begleitest du sie wieder,"
          "und kleidest sie"
          "in dein lichtes Gewand."
          "Du sprichst wenig, denkst viel,"
          "du versprichst wenig, gibst viel"
          "und jede deiner Gaben"
          "begleitest du mit Reinheit."
        }
      }
    }\hspace #0.1
  }
}
