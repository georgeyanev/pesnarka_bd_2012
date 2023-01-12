\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Melodie 4 – Erleuchtung" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

    \line { 1. Unendliche Weite, }

    \line {   "   " wunderbare Schönheit und Frieden, }

    \line {   "   " Sonne für die menschlichen Seelen }

    \line {   "   " bringt unaufhörlich die Liebe. }
  \line {   "   " }
    \line {2. Das gute Leben strömt }

    \line {   "   " in den warmen Sonnenstrahlen }

    \line {   "   " und die Seelen lobpreisen im Licht }

    \line {   "   " der gütige Vater der Liebe. }
    \line {   "   " }

    \line {3. Alles ist Liebe, }

    \line {   "   " Freude, Kraft und Leben. }

    \line {   "   " Ihr göttliches Licht }

    \line {   "   " bescheint diese Schönheit. }

  }
}
