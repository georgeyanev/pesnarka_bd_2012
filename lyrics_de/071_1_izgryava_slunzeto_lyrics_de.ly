\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne geht auf" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #18
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Die Sonne geht auf, sie sendet Licht, }

    \line { " "  es bringt Freude für das Leben. }


  }
}
