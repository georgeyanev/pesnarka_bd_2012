\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Vierter göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }


 \line { " " Und Gott sprach: „Es leuchten Lichter an der}
 \line { " " Feste des Himmels“, und es ward so.}

 \line { " "  Und Gott machte zwei Lichter: Ein großes regiere}
 \line { " "  den Tag, und ein kleines die Nacht.}

 \line { " " Und Gott machte, dass die Sterne leuchten}
 \line { " " an der Himmelsweite. Und Gott sah, dass alles gut war.}
 
  \line { " " Und es ward Abend und es ward Morgen, der vierte Tag.}
  }
  }
}
