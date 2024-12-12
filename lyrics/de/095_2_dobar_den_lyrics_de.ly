\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein guter Tag" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {

      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { Ein guter Tag ist ein lichter Tag.  }

    \line { Schön und erhaben ist er. }

    \line { Alles erleuchtet er, alles belebt er}

    \line { und teilt im Leben das göttliche Gute aus.}


  }
  }


}
