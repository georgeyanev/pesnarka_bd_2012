\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Theme 6 und Theme 7 " }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

     \line { " Ich wahre die Wärme." }
     \line { " Ich wahre die Wärme." }

  }
}
