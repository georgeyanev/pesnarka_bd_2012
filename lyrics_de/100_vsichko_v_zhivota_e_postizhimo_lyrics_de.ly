\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Alles im Leben ist erreichbar" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #18
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {   
  \line { " "   Alles im Leben ist erreichbar, }

 \line { " " wenn die Zeit gut ist,  }

 \line { " " und wir vernünftig sind. }

 \line { " " Denn das Gute ist das Fundament  }

 \line { " " und die Vernünftigkeit ein Ziel,  }

 \line { " " mit denen der Geist die Zukunft aufbaut, }

 \line { " " die Zukunft, die große Zukunft. }
       
    }
    
    
}
