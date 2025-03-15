\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sprich du von deinem Gram" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Sprich du von deinem Gram, "
          "öffne dein Herz unter den Sonnenstrahlen,"
          "unter den Sonnenstrahlen,"
          "unter den Sonnenstrahlen,"
          "unter den Sonnenstrahlen."
          "Die Sonnenstrahlen von Gott werden dir Güte bringen"
          "und in deine Seele Freude tragen,"
          "und in deine Seele Freude tragen,"
          "und in deine Seele Freude tragen,"
          "und in deine Seele Freude tragen,"
          "und in deine Seele Freude tragen,"
          "Freude werden sie hineintragen, Freude werden sie hineintragen, "
          "Freude werden sie hineintragen, Freude werden sie hineintragen, "
          "Freude werden sie hineintragen, Freude werden sie hineintragen, "
          "Freude werden sie hineintragen, Freude werden sie hineintragen "
          "und sie werden in deine Seele Freude tragen."
        }
      }

    }\hspace #0.1
  }
}
