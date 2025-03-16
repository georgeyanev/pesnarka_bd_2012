\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Vierter göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Und Gott sprach: „Es leuchten Lichter an der"
         "Feste des Himmels“, und es ward so."
         "Und Gott machte zwei Lichter: Ein großes regiere"
         "den Tag, und ein kleines die Nacht."
         "Und Gott machte, dass die Sterne leuchten"
         "an der Himmelsweite. Und Gott sah, dass alles gut war."
         "Und es ward Abend und es ward Morgen, der vierte Tag."
        }
      }
    }\hspace #0.1
  }
}
