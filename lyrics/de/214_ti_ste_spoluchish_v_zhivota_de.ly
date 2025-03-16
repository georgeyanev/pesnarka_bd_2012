\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dir wird alles im Leben glücken" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Schön ist das Leben der Engel. Schön ist das Leben unserer Seele."
         "Dir wird alles im Leben glücken."
         "Höre die Stimme der Engel und dir wird alles im Leben glücken."
         "Schön ist das Leben der Engel."
        }
      }
      
    }\hspace #0.1
  }
}