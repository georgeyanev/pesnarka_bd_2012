\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne geht auf" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #18
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Die Sonne geht auf, }

    \line { " " sie sendet Licht, }

    \line { " "  sie bringt Freude für das Leben. }


  }
}
