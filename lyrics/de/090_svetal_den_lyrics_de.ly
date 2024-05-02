\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Tag" }

\markup \null
\markup \null

\markup \abs-fontsize #10 {

   \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {

  \line { " "Lichter Tag, lichter Tag, Tag, Tag Tag,}

  \line { " "fröhlicher Tag, fröhlicher Tag, Tag, Tag, Tag.}

  \line { " "Lichter Tag, lichter Tag, göttlicher Tag,}

  \line { " "lichter Tag, lichter Tag, lichter, göttlicher Tag.}

  }
}
