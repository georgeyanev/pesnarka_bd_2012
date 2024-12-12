\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das gute Lied" }

\markup \null
\markup \null

\markup \abs-fontsize #11 {
         \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Sei bewusst, liebe, säe, erbaue ohne Unterlass, und gib alles im Leben.}
    \line { " " Diese Wahrheit  – Gott  –, erkenne du, erkenne du, Gott erkenne du.}
  }
         }
}
