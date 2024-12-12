\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dir wird alles im Leben glücken" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
    \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {
      \line {   "   " Schön ist das Leben der Engel. Schön ist das Leben unserer Seele.}
      \line {   "   " Dir wird alles im Leben glücken. }
      \line {   "   " Höre die Stimme der Engel und dir wird alles im Leben glücken. }
      \line {   "   " Schön ist das Leben der Engel.  }
    }
    }
}