\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann lieben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #15
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Ich kann lieben [ljubia], um gut zu werden, }
    \line { " "ich kann lieben [običam], um stark zu werden.}
    \line { " "  Die Liebe [Ljubovta] und die Liebe [Običta], }
    \line { " "  die Liebe [Ljubovta] und die Liebe [Običta], }
    \line { " "  werden mich lehren, Diener Gottes zu werden.}


  }


}
