\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die kleine Quelle" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
     \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {  
    \line { " " Ein heller Strahl steigt von oben herab,  }

    \line { " " um die kleinen Blumen zu erleuchten.   }

    \line { " " Nah entspringt eine kleine Quelle.  }

    \line { " " Sie sprudelt munter, murmelt und plätschert,  }

    \line { " " und die Blumen erfreut sie auf ewig.   }

    \line { " " Sie erfreut, erfreut, erfreut, sprudelt, murmelt, sie erfreut,  }

    \line { " " erfreut, sie sprudelt, sie erfreut, erfreut, }

    \line { " "  sie sprudelt munter, plätschert und erfreut die Blumen.  }


  }

     }
}
