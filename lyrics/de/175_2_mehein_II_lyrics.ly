\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hejn II" }
\markup \null
\markup \null
\markup  \abs-fontsize #10 {
 \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { "   " In Tagen des Kampfes, in Tagen der Trauer, }
 \line { "   " weit weg von dir oh, mein Heimatland,}
 \line { "   " ich denke immer an dich, }
 \line { "   " ich denke, ich denke immer an dich. }

  }
 }
}
