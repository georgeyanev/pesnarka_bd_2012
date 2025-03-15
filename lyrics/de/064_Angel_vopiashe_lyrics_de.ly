\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein Engel sang" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ein Engel rief der Mutter Gottes zu:"
          "„Reine Jungfrau, freue dich!"
          "Und ich sage dir wieder: Freue dich!"
          "Dein Sohn ist vom Grab am dritten Tag nach dem Tod"
          "auferstanden und erweckte die Toten zum Leben;"
          "Menschen, freut euch!"
          "Geheiligt, geheiligt seist du, neues Jerusalem,"
          "denn die Herrlichkeit Gottes ist über dich gekommen:"
          "Frohlocke jetzt und jauchze, oh Zion!"
          "Du, Reine, freue dich, Mutter Gottes"
          "über die Auferstehung des von dir Geborenen.“"
        }
      }
    }\hspace #0.1
  }
}
