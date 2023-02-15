\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Dobar den" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { Ein guter Tag ist ein lichter Tag.  }

    \line { Schön und erhaben ist er. }

    \line { Alles erleuchtet, alles belebt}

    \line { und verteilt im Leben das göttliche Gut.}



  }


}
