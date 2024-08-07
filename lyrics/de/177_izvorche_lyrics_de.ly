 \version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Quellchen" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
 \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
  
 \line { " "Dort oben, hoch im Gebirge,}

 \line { " "entspringt ein schönes Quellchen;}

 \line { " "es singt leise und gießt sein Herz aus:}

 \line { " "„Es gibt kein anderes kleines, }

 \line { " "so schönes Quellchen wie mich. }

 \line { " "Aus meinen Tiefen entspringt}

 \line { " "reines und belebendes Wasser.}

 \line { " "Wer von meinem Wasser trinkt, }

 \line { " "gewinnt das neue Leben,}

 \line { " "er umarmt die Lehre }

 \line { " "und macht sich an die Arbeit.“}
  }
 }
}
