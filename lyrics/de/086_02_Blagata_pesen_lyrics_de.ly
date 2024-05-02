\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Das gute Lied" }

\markup \null
\markup \null

\markup \abs-fontsize #10 {
     \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Sei bewusst, liebe, säe, erbaue ohne Unterlass, und gib alles im Leben.}
    \line { " " Diese Wahrheit  – Gott  –, erkenne du, erkenne du, Gott erkenne du.}
  }
}
