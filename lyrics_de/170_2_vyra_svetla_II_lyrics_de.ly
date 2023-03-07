\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube II" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #7
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Lichter, starker Glaube!}

\line { " "Er führt uns zu Gott, }

\line { " "zum Guten des Lebens,}

\line { " "zur Liebe Gottes,}

\line { " "wo der Frieden herrscht }

\line { " "und die Wahrheit ewig scheint.}
\line { " " }

  }
  
   \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {

\line { " "Lichter, starker Glaube!}

\line { " "Er stützt den Geist, }

\line { " "der das Leben gebiert.}

  }
}
