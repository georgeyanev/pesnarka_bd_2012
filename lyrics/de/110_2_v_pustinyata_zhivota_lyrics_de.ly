\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "In der Wüste des Lebens" }

\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
  \line { " "  In der Wüste des Lebens,}

 \line { " " dort, wo Gewalt sich ausbreitet,}

 \line { " " dort herrscht Leid und Qual.}

 \line { " " Jeden, mit dem sie befreundet sind,}

 \line { " " nennen sie Märtyrer, Held, Heiliger.}

    }


}
