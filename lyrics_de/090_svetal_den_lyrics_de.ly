\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Tag" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


  \line { " "Lichter Tag, lichter Tag, Tag, Tag Tag,}

  \line { " "fröhlicher Tag, fröhlicher Tag, Tag, Tag.}

  \line { " "Licher Tag, lichter Tag, göttlicher Tag,}

  \line { " "lichter Tag, lichter Tag, lichter, göttlicher Tag.}

  }
}
