\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das letzte Abendmahl" }
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Zun meri manu,"
          "zun meri manun dana,"
          "asavita vita nanda."
          "Zun meri manu,"
          "zun meri manun dana,"
          "asavita nanda."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Alles ist hell,"
          "alles ist durchlichtet"
          "mit meinem lebendigen Licht [videlina]."
          "Zun meri manu,"
          "zun meri manundana,"
          "asavita nanda."
        }
      }
    }
    \hspace #0.1
  }
}
