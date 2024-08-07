\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Freude" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
 \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Freude, Freude, Freude für mein Leben, }
 \line { " "du erfreust mein Herz, }
  \line { " " du erfreust mein Herz. (* du erfreust meine Seele.)}
  }
 }
}
