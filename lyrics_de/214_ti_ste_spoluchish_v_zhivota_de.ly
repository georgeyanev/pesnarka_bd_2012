\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Dir wird alles im Leben glücken" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
    \hspace #14
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {
      \line {   "   " Schön ist das Leben der Engel.  }
      \line {   "   " Schön ist das Leben unserer Seele.  }
      \line {   "   " Dir wird alles im Leben glücken. }
      \line {   "   " Höre die Stimme der Engel  }
      \line {   "   " und Dir wird alles im Leben glücken.  }
      \line {   "   " Schön ist das Leben der Engel.  }
    }
}