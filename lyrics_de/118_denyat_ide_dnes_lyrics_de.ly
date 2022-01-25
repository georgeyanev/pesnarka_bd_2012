\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Tag kommt" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #8
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

 \line { 1.	Ich kann sagen, dass der Tag kommt;}

 \line { "   "die Sonne wird aufgehen und wir werden gut handeln. (2)}
 \line { "  "}

 \line { 2.	Ich kann sagen, dass Gott mich liebt.}

 \line { "   "Die Sonnenstrahlen flüstern es mir leise zu. (2) }
 \line { "  "}

 \line { 3.	Die Morgenröte atmet voller Frische, der Tag bricht an. }

 \line { "   "Freude und Hoffnung erfüllen unsere Herzen. (2)}

  }
}
