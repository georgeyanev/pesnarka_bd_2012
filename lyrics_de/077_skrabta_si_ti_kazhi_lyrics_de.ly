\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sage deine Trauer" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Sage deine Trauer, }
    \line { " "  öffne dein Herz unter den Sonnenstrahlen.}
    \line { " " Die Sonnenstrahlen von Gott werden dir Güte bringen}
    \line { " "und Freude in die Seele hineinbringen,}
    \line { " " und sie werden Freude in die Seele hineinbringen.}
  }
}
