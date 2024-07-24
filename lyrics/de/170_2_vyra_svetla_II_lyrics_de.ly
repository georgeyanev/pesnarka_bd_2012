\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube II" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Lichter Glaube, starker Glaube!}

\line { " "Er führt uns zu Gott, }

\line { " "zum Guten des Lebens, zur Liebe Gottes,}

\line { " "wo der Frieden herrscht, }

\line { " "und die Wahrheit ewig scheint.}
\line { " " }

  }
  
   \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {

\line { " "Lichter Glaube, starker Glaube!}

\line { " "Er stützt den Geist, }

\line { " "der das Leben gebiert.}

  }
}
