\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Meine Sonne wird heute aufgehen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Meine liebe Mutter, meine Sonne wird heute aufgehen."
          "Sie wird mir Licht und Freude bringen."
          "Meine liebe Mutter, meine Sonne wird heute aufgehen"
          "und sie wird lichte Freude in mein Leben bringen."
          "Dann werde ich, Mutter, mich bekunden,"
          "bereit sein, das Gute in der Welt zu bekunden."
          "Ich werde gut denken, ich werde gut fühlen,"
          "ich werde gut handeln, Mutter."
          "Du wirst, Mutter, einen guten Sohn haben."
          "Meine liebe Mutter, meine Sonne wird heute aufgehen"
          "und sie wird mein Leben mit Freude erfüllen."
        }
      }
    }\hspace #0.1
  }
}
