\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann lieben" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ich kann lieben [ljubia], um gut zu werden,"
          "ich kann lieben [običam], um stark zu werden."
          "Die Liebe [Ljubovta] und die Liebe [običta],"
          "die Liebe [Ljubovta] und die Liebe [običta],"
          "werden mich lehren, Diener Gottes zu werden."
        }
      }
    }\hspace #0.1
  }
}
