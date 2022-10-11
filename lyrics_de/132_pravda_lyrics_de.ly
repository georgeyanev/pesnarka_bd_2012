\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Gerechtigkeit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

  \line { " "Gerechtigkeit, Gerechtigkeit, Gerechtigkeit,}

  \line { " "die du Freiheit in den Verstand bringst.}

  \line { " "Schön und mächtig bist du }

  \line { " "und verteilst alles in der Welt. }

  \line { " "Gerechtigkeit, Gerechtigkeit!}

  }
}
