\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ein guter Tag" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { Ein guter Tag ist ein lichter Tag.  }

    \line { Schön und erhaben ist er. }

    \line { Alles erleuchtet er, alles belebt er}

    \line { und teilt im Leben das göttliche Gute aus.}



  }


}
