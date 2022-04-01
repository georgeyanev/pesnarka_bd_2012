\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)


  
  \column {
     \line { " " } 
     \line { "   "Abends, morgens es kommt es geht, }
     \line { "   "abends, morgens es kommt es geht, }
     \line { "   "es kommt, es geht, es kommt, es geht, }
     \line { "   "es kommt, es geht, es kommt. }
  }
}    
