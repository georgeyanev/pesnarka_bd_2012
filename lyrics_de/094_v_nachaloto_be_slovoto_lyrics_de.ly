\version "2.18.2"

\markup \fill-line { \fontsize #deTitleFontSize "Im Anfang war das Wort" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
    \hspace #14.91
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
    
        \column {
        
    \line { " " Im Anfang war das Wort,} 

\line { " "und das Wort war bei Gott,}

\line { " " und das Wort war Gott.}
 
\line { " "Dieses war im Anfang bei Gott.}
\line { " " }      

\line { " "Alles wurde durch dasselbe,}

\line { " "und ohne dasselbe wurde auch nicht eines,} 

\line { " "das geworden ist.}
\line { " " }      

\line { " "In ihm war Leben, }

\line { " "und das Leben war }

\line { " "das Licht der Menschen.}
\line { " " }      

\line { " "Und das Licht scheint}

\line { " "in der Finsternis, }

\line { " "und die Finsternis hat es nicht erfasst.}
      
       
    }
    
    
}