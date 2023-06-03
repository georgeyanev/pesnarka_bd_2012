\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Thema 6 und Thema 7 " }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

     \line { " Ich werde die Wärme bewahren." }
     \line { " Ich werde die Wärme bewahren." }

  }
}
