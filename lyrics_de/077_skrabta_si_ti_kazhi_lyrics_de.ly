\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sprich du von deinem Gram" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Sprich du von deinem Gram, }
    \line { " " öffne dein Herz unter den Sonnenstrahlen, }
    \line { " " unter den Sonnenstrahlen, }
    \line { " " unter den Sonnenastrahlen,}
    \line { " " unter den Sonnenstrahlen.}
    \line { " " Die Sonnenstrahlen von Gott werden dir Güte bringen}
    \line { " " und in die Seele Freude tragen,}
    \line { " " und sie werden in die Seele Freude tragen.}
  }
}
