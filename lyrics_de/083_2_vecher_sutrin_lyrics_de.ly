\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }


\markup \fontsize #deCoupletFontSize {
  \hspace #1
  \override #`(baseline-skip . ,deCoupletBaselineSkip)



  \column {
  %  \line { "   "Abends, morgens es kommt es geht, abends, morgens, es kommt es geht.}
   
  }
}
