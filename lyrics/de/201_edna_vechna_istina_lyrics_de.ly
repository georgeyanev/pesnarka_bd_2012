\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Eine ewige Wahrheit, die der Gott der Liebe ist" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { " " Titel in bulgarischer, Text in vatanischer Sprache.}

  }
}
