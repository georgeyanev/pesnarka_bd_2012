\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Tag bricht an" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #8
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { 1.	Ich kann sagen, dass der Tag schon anbricht;}
 \line { "   "die Sonne wird aufgehen, handeln wir gut,}
 \line { "   "die Sonne wird aufgehen, handeln wir gutw.}
 \line { "  "}

 \line { 2.	Ich kann sagen, dass Gott mich liebt.}

 \line { "   "Die Sonnenstrahlen flüstern es mir sanft zu.  }
 \line { "   "Die Sonnenstrahlen flüstern es mir sanft zu. }
 \line { "  "}

 \line { 3.	Die Morgenröte atmet Frische, der Tag erwacht. }
 \line { "   "Freude und Hoffnung erfüllen unsere Herzen. }
 \line { "   "Freude und Hoffnung erfüllen unsere Herzen.}

  }
}
