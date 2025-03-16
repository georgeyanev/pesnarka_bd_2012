\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Siebter göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "So vollendete Gott Himmel und Erde mit ihrem ganzen Heer."
          "Und Gott segnete den siebenten Tag und heiligte ihn,"
          "weil Er an ihm ruhte von allen Seinen Werken."
          "Und Gott sah, dass alles, was Er gemacht hatte, gut war."
          "Aum, Aum, Aumen."
        }
      }
      
    }\hspace #0.1
  }
}
