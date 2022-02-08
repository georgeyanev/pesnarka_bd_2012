\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Alles im Leben ist erreichbar" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }      
  \line { " "   Alles im Leben ist erreichbar, }

 \line { " " wenn die Zeit gut ist  }

 \line { " " und wir vernünftig sind. }

 \line { " " Denn das Gute ist ein Grund  }

 \line { " " und die Vernünftigkeit ein Ziel,  }

 \line { " " mit der der Geist die Zukunft, }

 \line { " " die große Zukunft, errichtet. }
       
    }
    
    
}
        