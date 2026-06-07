\version "2.26.0"

\markup \fill-line { \fontsize #deTitleFontSize "Die innere Stimme Gottes – Meditation" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

    \column {
      \line { " "Titel in bulgarischer, Text in vatanischer Sprache.}

    }
  }
}
