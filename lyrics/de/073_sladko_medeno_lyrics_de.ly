\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Süß, honigsüß" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {
    \fill-line {  
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

       
  \line { " "Süß, honigsüß, süß, honigsüß, süß, honigsüß, süß, honigsüß, }
  \line { " " honigsüß, honigsüß, süß honigsüß.}

  \line { " " Von der Sonne gesandt, von den Bienen überbracht. }

      
  }
       
    }
    
    
}
    
