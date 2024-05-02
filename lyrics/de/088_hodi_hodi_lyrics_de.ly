\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Lauf, lauf" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {

   \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
	 
	\line { 1. Lauf, lauf, lauf, }

  \line { "   "lauf um das Wasser,}

  \line { "   "im Morgentau, }

  \line { "   "durch ein klares Bächlein,}

  \line { "   "auf dem reinen Pfad. }

  \line { "   "Bringe dieses klare Wasser nach Hause, }

  \line { "   "zu den lieben Blümlein, }

  \line { "   "seinen kleinen Kindern.}

  }

   \hspace #1
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line {  2.	So bieten die Regentropfen }

 \line { "   " reichlich Feuchtigkeit, }
 
  \line { "   "den Strom des Lebens. }
 
 \line { "   "Samenkörner sprießen, }
 
 \line { "   "Knospen öffnen sich, }
 
 \line { "   "Früchte reifen. }
 
 \line { "   "Alles erwacht; }
 
  \line { "   " machtvoll ist das Wasser!  }
    }
}
