\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize " Inspiration" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
      \line { " " }      
      \line {  Inspiration, Inspiration, Inspiration,  }
      \line {  Inspiration, Inspiration, du bist ein Segen. }  
      
      
       
    }
    
    
}