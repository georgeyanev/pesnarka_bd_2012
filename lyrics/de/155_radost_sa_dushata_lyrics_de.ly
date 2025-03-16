\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Freude, Freude für die Seele" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Freude, Freude für die Seele bringt die Reinheit."
          "Freude, Freude für die Seele bringt die Reinheit."
          "Seid rein, wie die Bienen."
          "Seid rein, wie die Blumen."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Freude, Freude für die Seele bringt die Reinheit."
          "Freude, Freude für die Seele bringt die Reinheit."
          "Seid licht, wie die Sterne."
          "Seid licht, wie die Sonnen."
        }
      }
    }\hspace #0.1
  }
}
