\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Steh' auf, Tochter!" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Unendliche Weite,"
          "wunderbare Schönheit und Frieden,"
          "Sonne für die menschlichen Seelen"
          "bringt unaufhörlich die Liebe."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Das gute Leben strömt"
          "in den warmen Sonnenstrahlen"
          "und die Seelen lobpreisen im Licht"
          "den gütigen Vater der Liebe."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Alles ist Liebe,"
          "Freude, Kraft und Leben."
          "Heiges, göttliches Licht [videlina]"
          "erleuchtet diese Schönheit."
        }
      }
    }\hspace #0.1
  }
}
