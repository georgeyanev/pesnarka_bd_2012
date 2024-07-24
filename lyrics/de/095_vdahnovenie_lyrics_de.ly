\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize " Inspiration" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {

  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {   
      \line {  Inspiration, Inspiration, Inspiration, Inspiration, Inspiration, du bist ein Segen. }      
    }   
}
