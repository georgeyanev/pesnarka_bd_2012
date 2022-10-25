\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Du wirst Erfolg haben im Leben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
    \hspace #10
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
        \column {
     \line { " " }
      \line {   "   " Schön ist das Leben der Engel.  }
      \line {   "   " Schön ist das Leben unserer Seele.  }
      \line {   "   " Du wirst im Leben erfolgreich sein. }
      \line {   "   " Höre die Stimme der Engel  }
      \line {   "   " und du wirst im Leben erfolgreich sein.  }
      \line {   "   " Schön ist das Leben der Engel.  }

      
    }
}