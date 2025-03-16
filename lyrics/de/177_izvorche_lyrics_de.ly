 \version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Quellchen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
 \fill-line {
   \hspace #0.1
   \column {
     \line {
       \bold "  "
       \column {
        "Dort oben, hoch im Gebirge,"
        "entspringt ein schönes Quellchen;"
        "es singt leise und gießt sein Herz aus:"
        "„Es gibt kein anderes kleines,"
        "so schönes Quellchen wie mich."
        "Aus meinen Tiefen entspringt"
        "reines und belebendes Wasser."
        "Wer von meinem Wasser trinkt,"
        "gewinnt das neue Leben,"
        "er umarmt die Lehre"
        "und macht sich an die Arbeit.“"
       }
     }
     
   }\hspace #0.1
 }
}
