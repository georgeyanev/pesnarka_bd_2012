\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Frühlingslied" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
                \column {
         "Nun kommt der wundervolle Frühling;"
         "die Sonne geht auf."
         "Alles erwacht, gedeiht, lebt,"
         "und freut sich und dankt Gott."
         "Der Frühling, der Frühling ist da!"
         "Ein Vögelein am Himmel zwitschert süß,"
         "die Sonne übergießt freundlich"
         "die ganze Welt mit Freude und Liebe."
         "Die ganze Welt frohlockt und dankt Gott!"
         "Der Frühling, der Frühling ist da!"
        }
      }
      
    }\hspace #0.1
  }
}
