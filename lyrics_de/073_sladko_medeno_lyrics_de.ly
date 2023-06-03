\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Süß, honigsüß" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
       
  \line { " "Süß, honigsüß, }
  \line { " " süß, honigsüß, }
  \line { " " süß, honigsüß, }
  \line { " " süß, honigsüß, }

  \line { " "honigsüß, honigsüß, }
  \line { " "  süß, honigsüß.}

  \line { " "Von der Sonne gesandt, }
  \line { " " von den Bienen überbracht. }

      
      
       
    }
    
    
}
    
