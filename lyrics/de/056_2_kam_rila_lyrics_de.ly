\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ins Rila fliegen wir" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Ins Rila fliegen wir"
          "mit machtvollem Gedanken jeden Tag."
          "Mit diesem Wunsch in der Brust"
          "leben wir in einer unvergänglichen Welt."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Wieder werden wir uns"
          "bei den Rila-Augen treffen."
          "Hier wird unsere Violine"
          "in neuem Klang ertönen."
        }
      }
      \vspace #1
    }
    \hspace #0.1
    \column {
      \line {
        \bold "3."
        \column {
          "Unsere Seelen – Geigen"
          "werden Schönheit ausgießen,"
          "denn mit ihnen wird spielen"
          "das Gute, die Liebe."
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Wir werden ins Rila gehen,"
          "wir werden Musala sehen,"
          "die unendliche Natur"
          "und unseren lieben Vater."
        }
      }
    }\hspace #0.1
  }
}


