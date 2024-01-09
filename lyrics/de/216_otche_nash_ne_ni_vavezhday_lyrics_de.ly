\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Vater unser, führe uns nicht in Versuchung" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


 \line { " "Ich werde die Wärme meines Herzens bewahren,}

 \line { " "die die göttlichen Güter in meine Seele bringt.}

 \line { " "Herr, führe uns nicht in Versuchung,}

 \line { " "führe uns nicht in Versuchung.}


  }
}
