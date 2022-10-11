\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Es kommen Tage der Freude" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { "   " }
     \line { " "Es kommen die Tage der Freude, }

\line { " "es kommen die Tage der Freude,}

\line { " "es kommen die Tage der Freude,}

\line { " "für diejenige, die Gott dienen. }
     
          
       }
       
    }    
