\version "2.20.0"

\markup \fill-line { \fontsize #6 "Süß, honigsüß" }
\markup \null
\markup \null
\markup \fontsize #+2.5 {
    \hspace #10
    \override #'(baseline-skip . 2)
    
        \column {
     \line { " " }      
  \line { " "Süß, honigsüß (4) }

  \line { " "honigsüß, honigsüß, süß, honigsüß.}

  \line { " "Von der Sonne gesandt, von den Bienen gebracht. }

      
      
       
    }
    
    
}
    
