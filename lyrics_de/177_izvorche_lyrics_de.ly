 \version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Quellchen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
  
 \line { " "Dort oben, hoch im Gebirge,}

 \line { " "entspringt eine schöne Quelle;}

 \line { " "sie singt leise und gießt ihr Herz aus:}

 \line { " "Es gibt keine andere kleine, }

 \line { " "so schöne Quelle wie mich, }

 \line { " "Aus meinen Tiefen }

 \line { " "entspringt ein reines und belebendes Wasser.}

 \line { " "Wer von meinem Wasser trinkt, }

 \line { " "gewinnt das neue Leben,}

 \line { " "er umarmt die Lehre }

 \line { " "und macht sich an die Arbeit.}
  }
}
