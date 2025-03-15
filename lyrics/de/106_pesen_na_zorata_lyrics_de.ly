\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied der Morgenröte" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Die lichte Morgenröte bricht an,"
          "die lichte Morgenröte bricht an,"
          "sie bricht an, sie bricht an."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Alle Freude bringt sie in das Leben."
          "Der Jugend bringt sie Gesundheit,"
          "den Arbeitenden eine Gabe – das Leben."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Möge es den Weisen wohlergehen,"
          "mögen die Guten in Wohlstand leben,"
          "mögen sie gut leben, mögen sie in Wohlstand leben;"
          "mögen die Weisen gut leben,"
          "die Guten in Wohlstand leben."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Für sie bricht die lichte Morgenröte an,"
          "für sie bricht die lichte Morgenröte an,"
          "bricht an, bricht an."
        }
      }
    }\hspace #0.1
  }
}
