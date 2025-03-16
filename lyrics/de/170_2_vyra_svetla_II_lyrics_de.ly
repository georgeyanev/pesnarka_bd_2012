\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube II" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
 \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
              "Lichter Glaube, starker Glaube!"
          "Er führt uns zu Gott,"
          "zum Guten des Lebens, zur Liebe Gottes,"
          "wo der Frieden herrscht,"
          "und die Wahrheit ewig scheint."
        }
      }
      
    }
    \hspace #0.1
    \column {
      \line {
        \bold "2."
        \column {
        "Lichter Glaube, starker Glaube!"
          "Er stützt den Geist,"
          "der das Leben gebiert."
        }
      }
      \hspace #0.1
    }
  }
}
