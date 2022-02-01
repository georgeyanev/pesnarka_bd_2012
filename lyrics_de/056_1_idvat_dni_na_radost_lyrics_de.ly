\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Es kommen Tage der Freude" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { "   " }
     \line { " "Es kommen die Tage der Freude, }

\line { " "es kommen die Tage der Freude,}

\line { " "es kommen die Tage der Freude,}

\line { " "für diejenige, die Gott dienen. }
     
          
       }
       
    }    
