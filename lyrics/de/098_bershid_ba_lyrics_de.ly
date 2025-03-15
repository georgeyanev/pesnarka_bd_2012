\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Beršid Ba" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Es war einmal, es war einmal,"
          "als alles Finsternis war,"
          "und in ihr war das Licht erschienen."
          "Und das Licht zeichnete"
          "die Schönheit des göttlichen Lebens,"
          "das in mich einzog"
          "und meine Seele erhob."
        }
      }
    }\hspace #0.1
  }
}
