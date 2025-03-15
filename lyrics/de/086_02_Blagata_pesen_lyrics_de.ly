\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das gute Lied" }

\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Sei bewusst, liebe, säe, erbaue ohne Unterlass, und gib alles im Leben."
          "Diese Wahrheit  – Gott  –, erkenne du, erkenne du, Gott erkenne du."
        }
      }

    }\hspace #0.1
  }
}