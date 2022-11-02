\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize " Inspiration" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {    
      \line {  Inspiration, Inspiration, Inspiration,  }
      \line {  Inspiration, Inspiration, du bist ein Segen. }      
    }   
}
