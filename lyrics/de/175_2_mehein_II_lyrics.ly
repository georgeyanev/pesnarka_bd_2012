\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hejn II" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "In Tagen des Kampfes, in Tagen der Trauer,"
         "weit weg von dir oh, mein Heimatland,"
         "ich denke immer an dich,"
         "ich denke, ich denke immer an dich."
        }
      }
      
    }\hspace #0.1
  }
}
