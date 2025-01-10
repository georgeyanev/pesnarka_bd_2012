

\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Brüderlichkeit und Einheit" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Brüderlichkeit und Einheit wollen wir," 
          "den Ruf der Liebe senden wir aus," 
          "die Welt der Freude rufen wir,"
          "auf dass wir das gute Leben in uns ergießen," 
          "auf dass wir das gute Leben in uns ergießen," 
          "auf dass wir das gute Leben in uns ergießen," 
          "auf dass wir das gute Leben in uns ergießen," 
          "ergießen, ergießen, ergießen." 
        }
      }
      
    }\hspace #0.1
  }
}
