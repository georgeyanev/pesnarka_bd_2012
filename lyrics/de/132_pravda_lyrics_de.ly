\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gerechtigkeit" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
     \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { " "Gerechtigkeit, Gerechtigkeit, Gerechtigkeit,}

  \line { " "die du Freiheit für den Verstand bringst.}

  \line { " "Schön und mächtig bist du }

  \line { " "und verteilst alles in der Welt. }

  \line { " "Schön und mächtig bist du }

  \line { " "und verteilst alles in der Welt. }

  \line { " "Gerechtigkeit, Gerechtigkeit!}

  }
     }
}
