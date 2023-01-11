\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Brüderlichkeit, Einheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line {  1. Wir wollen Brüderlichkeit und Einheit, }
    \line {   "   "Wir senden den Ruf der Liebe aus, }
    \line {   "   " Die Welt der Freude rufen wir: }
    \line {
      "   " auf dass wir das gute Leben in uns
      ergießen!
    }


    \line { " " }
    \line {   2. Auf dass wir das gute Leben in uns ergießen, (3) }
    \line {   "   "ergießen, ergießen, ergießen, }
    \line {   "   " Auf das wir das gute Leben in uns ergießen, (2) }
    \line {   "   " ergießen, ergießen, ergießen. }

  }
}
