\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Tag bricht an" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Ich kann sagen, dass der Tag schon anbricht;"
          "die Sonne wird aufgehen, handeln wir gut,"
          "die Sonne wird aufgehen, handeln wir gut."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Ich kann sagen, dass Gott mich liebt."
          "Die Sonnenstrahlen flüstern es mir sanft zu."
          "Die Sonnenstrahlen flüstern es mir sanft zu."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Die Morgenröte atmet Frische, der Tag erwacht."
          "Freude und Hoffnung erfüllen unsere Herzen."
          "Freude und Hoffnung erfüllen unsere Herzen."
        }
      }
    }\hspace #0.1
  }
}
