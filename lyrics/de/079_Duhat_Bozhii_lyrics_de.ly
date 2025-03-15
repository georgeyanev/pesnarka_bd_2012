\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Geist Gottes" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Geist Gottes, ewiger Geist,"
          "heiliger Geist, gütiger Geist,"
          "Wer/Er* erfüllt unsere Herzen mit Liebe,"
          "Wer erfüllt unsere Herzen mit Liebe?!"
          "Wer erfüllt, Wer erfüllt, Wer erfüllt,"
          "Wer erfüllt unsere Herzen mit Liebe,"
          "Wer erfüllt unsere Herzen mit Liebe."
          "Mit Liebe, mit Liebe, mit Liebe."
          "Wer erfüllt unsere Herzen mit Liebe,"
          "Wer erfüllt unsere Herzen mit Liebe?!"
        }
      }
    }\hspace #0.1
  }
}
