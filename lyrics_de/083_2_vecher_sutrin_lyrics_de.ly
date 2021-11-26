\version "2.20.0"

\markup \fill-line { \fontsize #6 "Abends, morgens" }
\markup \null
\markup \null

\markup \fontsize #+2.5 {
  \hspace #14
  \override #'(baseline-skip . 2)
  
  \column {
     \line { " " } 
     \line { "   "Abends, morgens es kommt es geht, }
     \line { "   "abends, morgens es kommt es geht, }
     \line { "   "es kommt, es geht, es kommt, es geht, }
     \line { "   "es kommt, es geht, es kommt. }
  }
}    
