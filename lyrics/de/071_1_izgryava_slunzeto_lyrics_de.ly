\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne geht auf" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Die Sonne geht auf, sie sendet Licht, }

    \line { " "  es bringt Freude für das Leben. }

  }
  }
}
