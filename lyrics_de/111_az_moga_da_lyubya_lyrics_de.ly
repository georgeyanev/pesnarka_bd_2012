\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann lieben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Ich kann lieben [ljubia], }
    \line { " " um gut zu werden, }
    \line { " "ich kann lieben [obitscham], }
    \line { " "  um stark zu werden.}
    \line { " "  Die Liebe [ljubovta] und die Liebe [obitschta] }
    \line { " "  werden mich lehren, }
    \line { " " Diener Gottes zu werden.}


  }


}
