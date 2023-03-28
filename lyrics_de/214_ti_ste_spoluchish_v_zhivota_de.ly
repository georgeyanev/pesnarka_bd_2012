\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Du wirst im Leben glücken" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
    \hspace #14
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {
      \line {   "   " Schön ist das Leben der Engel.  }
      \line {   "   " Schön ist das Leben unserer Seele.  }
      \line {   "   " Du wirst im Leben glücken. }
      \line {   "   " Höre die Stimme der Engel  }
      \line {   "   " und Du wirst im Leben glücken.  }
      \line {   "   " Schön ist das Leben der Engel.  }
    }
}