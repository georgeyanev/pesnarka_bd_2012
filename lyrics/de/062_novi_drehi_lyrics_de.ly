\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Neue Kleider" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Wie der Mensch seine alten Kleider auszieht,"
          "damit er neue, reine, weiße anziehen kann,"
          "so verlässt der Geist das Fleisch,"
          "um ein anderes Fleisch zu bewohnen"
          "und geht, um andere Bereiche zu erben."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "So durchquert er die Welten"
          "und wird zu Fleisch in ihnen –"
          "auf dass er neue Talente entwickelt,"
          "auf dass er ein neues Leben erbaut."
          "So schreitet er unaufhörlich voran,"
          "in der unausdrücklichen Schönheit –"
          "und erreicht das Licht –"
          "dort, wo es Seligkeit gibt."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "So erhaben und allweise"
          "schuf Gott alles"
          "und ließ niemanden ohne Streben und Hoffnung."
          "Und das Leben ist angenehm,"
          "jedem gefällt es immer wieder;"
          "möge alles Lebendige, das atmet,"
          "ewig den Herrn lobpreisen."
        }
      }
    }
    \hspace #0.1
  }
}
