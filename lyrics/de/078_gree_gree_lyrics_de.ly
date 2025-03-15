\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Es scheint, es scheint" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Es scheint, es scheint, es scheint das Licht,"
          "es scheint, es scheint, es scheint das Licht,"
          "es scheint, es scheint, es scheint das Licht,"
          "es scheint, es scheint, es scheint das Licht,"
          "es scheint, es scheint, es scheint das Licht,"
          "es scheint, es scheint, es scheint, es scheint, es scheint."
          "Für die Gräser, für das Wasser, "
          "für die Blumen, für die Kinder, "
          "bringt es Freude für die Herzen. "
          "Für die Gräser, für das Wasser, "
          "für die Blumen, für die Kinder, "
          "bringt es Freude für die Herzen. "
        }
      }

    }\hspace #0.1
  }
}
