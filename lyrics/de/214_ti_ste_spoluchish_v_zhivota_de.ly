\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Dir wird alles im Leben glücken" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
    \hspace #25
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