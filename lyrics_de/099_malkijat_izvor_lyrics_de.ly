\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Die kleine Quelle" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }      
      \line { " "Ein heller Strahl kommt von oben,  }

\line { " "um die kleinen Blumen zu erleuchten.   }

\line { " "Nah entspringt eine kleine Quelle.  }

\line { " "Sie sprudelt leicht, flüstert und plätschert,  }

\line { " "und erfreut auf ewig die Blumen.   }

\line { " "Sie erfreut, erfreut, erfreut, sprudelt, flüstert, erfreut,  }

\line { " "sie erfreut, sie sprudelt, erfreut, erfreut, }
        
       \line { " "  sprudelt leicht, plätschert und erfreut die Blumen.  }
      
       
    }
    
    
}
