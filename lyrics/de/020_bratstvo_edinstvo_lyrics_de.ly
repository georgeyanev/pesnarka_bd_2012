\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Brüderlichkeit, Einheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line {  "   " Brüderlichkeit und Einheit wollen wir, }
    \line {   "   "den Ruf der Liebe senden wir aus, }
    \line {   "   " die Welt der Freude rufen wir, }
    \line { "   " auf dass wir das gute Leben in uns ergießen,}
    \line {   "   " auf dass wir das gute Leben in uns ergießen, }
    \line {   "   " auf dass wir das gute Leben in uns ergießen, }
    \line {   "   " auf dass wir das gute Leben in uns ergießen,  }
    \line {   "   " ergießen, ergießen, ergießen. }

  }
}
