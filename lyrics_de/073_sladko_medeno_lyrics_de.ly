\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Süß, honigsüß" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
       
  \line { " "Süß, honigsüß (4) }

  \line { " "honigsüß, honigsüß, süß, honigsüß.}

  \line { " "Von der Sonne gesandt, von den Bienen übergebracht. }

      
      
       
    }
    
    
}
    
