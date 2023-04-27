\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hein" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #8
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { 1. In Tagen des Kampfes, in Tagen der Trauer, }
 \line { "   " weit weg von dir oh, mein Heimatland}
 \line { "   " ich denke immer an dich, }
 \line { "   " ich denke, ich denke immer an dich. }

  }
}
