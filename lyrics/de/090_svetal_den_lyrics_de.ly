\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Tag" }

\markup \null
\markup \null

\markup \abs-fontsize #11 {

      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {

  \line { " "Lichter Tag, lichter Tag, Tag, Tag Tag,}

  \line { " "fröhlicher Tag, fröhlicher Tag, Tag, Tag, Tag.}

  \line { " "Lichter Tag, lichter Tag, göttlicher Tag,}

  \line { " "lichter Tag, lichter Tag, lichter, göttlicher Tag.}

  }
      }
}
