\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Theme 6 und Theme 7 " }
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
