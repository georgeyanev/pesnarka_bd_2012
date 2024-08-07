\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann lieben" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { " "Ich kann lieben [ljubia], um gut zu werden, }
    \line { " "ich kann lieben [običam], um stark zu werden.}
    \line { " "  Die Liebe [Ljubovta] und die Liebe [običta], }
    \line { " "  die Liebe [Ljubovta] und die Liebe [običta], }
    \line { " "  werden mich lehren, Diener Gottes zu werden.}


  }

      }
}
