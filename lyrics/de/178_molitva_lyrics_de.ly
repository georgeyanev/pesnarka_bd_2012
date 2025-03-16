\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gebet" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Höre, Herr, an Dich richte ich mein Gebet."
          "Mein Körper befreie sich von allen Ungerechtigkeiten,"
          "die ich in die Welt bringe."
          "Herr, Herr, Herr, Deine Barmherzigkeit komme,"
          "über mich, über mich."
          "Ich, der ich noch nicht weiß, wie ich leben soll."
        }
      }
    }\hspace #0.1
  }
}