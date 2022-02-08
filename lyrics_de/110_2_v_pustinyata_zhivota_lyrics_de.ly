\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "In der Wüste des Lebens" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }
      \line { " "  In der Wüste des Lebens,}

 \line { " " dort, wo Gewalt sich ausbreitet,}

 \line { " " herrschen Leiden und Qual.}

 \line { " " Jeder, mit dem sie befreundet sind,}

 \line { " " den nennen sie ihn Märtyrer, Helden, Heilige.}

    }


}
