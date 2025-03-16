\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gott ist Liebe II" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Gott ist Liebe, Gott ist Liebe,"
          "Gott ist Liebe, Liebe,"
          "ewige, grenzenlose Liebe,"
          "erfüllt mit Leben,"
          "Leben des gütigen Geist Gottes."
          "Der Geist der Güte,"
          "der Geist der Heiligkeit,"
          "der Geist des vollen Friedens und der Freude für jede Seele."
          "Wir werden auf diesem Weg des Lichtes,"
          "des Lichtes, des Lichtes gehen,"
          "dort, wo die göttliche Liebe herrscht."
        }
      }

    }\hspace #0.1
  }
}