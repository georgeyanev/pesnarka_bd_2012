\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gott ist Liebe" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Gott ist Liebe, Gott ist Liebe, Gott ist Liebe,"
          "Liebe, ewige, grenzenlose, Liebe,"
          "erfüllt mit Leben,"
          "Leben des gütigen göttlichen Geistes."
          "Geist der Güte,"
          "Geist der Heiligkeit,"
          "Geist des vollen Friedens und der Freude für jede Seele."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Wir werden auf diesem Weg des Lichtes,"
          "des Lichtes, des Lichtes, gehen,"
          "dort, wo die göttliche Liebe,"
          "die göttliche Liebe, die göttliche Liebe herrscht."
        }
      }

    }\hspace #0.1
  }
}
