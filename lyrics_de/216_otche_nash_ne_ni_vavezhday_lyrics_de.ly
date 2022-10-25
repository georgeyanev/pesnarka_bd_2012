\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Vater unser, führe uns nicht in Versuchung" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


 \line { " "Ich werde die Wärme meines Herzens aufbewahren,}

 \line { " "die die göttlichen Güter in meiner Seele bringt.}

 \line { " "Herr, führe uns nicht in Versuchung,}

 \line { " "führe uns nicht in Versuchung.}


  }
}
