\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Eine ewige Wahrheit, die der Gott der Liebe ist" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #27
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { " " Text in Vatan.}

  }
}
