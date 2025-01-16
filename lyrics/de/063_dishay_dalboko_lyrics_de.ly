\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Atme tief" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Atme tief mit fröhlichem Herzen,"
          "und erfreue dich, Kind, am Leben."
          "Die Luft ist für uns immer eine lebendige Kraft,"
          "atme, atme und atme wieder,"
          "atme, auf dass du gesund bleibst!"
        }
      }
      \vspace #0.5
      \line {
        \bold "2."
        \column {
          "Wenn du, Kind, tief atmest,"
          " wirst du ein gesundes, gutes Herz haben."
          "Ein gesundes Herz, einen guten Kreislauf,"
          "einen starken Magen, einen starken Körper"
          "wirst du, Kind, haben."
        }
      }
      \vspace #0.5
      \line {
        \bold "3."
        \column {
          "Wenn du, Kind, tief atmest,"
          "soll dein Körper aufgerichtet sein!"
          "Aufrechte Haltung, ein munterer Schritt,"
          "mit dem Blick immer vorwärts."
          "Atme, atme und atme wieder,"
          "atme du überall."
        }
      }
    }\hspace #0.1
  }
}
