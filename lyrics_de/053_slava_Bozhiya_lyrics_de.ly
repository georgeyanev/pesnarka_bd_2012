\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Die Herrlichkeit Gottes" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }
     
     
     \line { " " Gib nicht mir, nicht mir, }

 \line { " " sondern Deinem Namen gib Ruhm, Ruhm, Ruhm.}
     
      }
       
    } 
