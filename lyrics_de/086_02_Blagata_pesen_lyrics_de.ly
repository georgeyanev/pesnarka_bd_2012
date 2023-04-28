\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Das gute Lied" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Sei bewusst, }
    \line { " " liebe, säe, erbaue ohne Unterlass, }
    \line { " " und gib alles im Leben.}
    \line { " " Diese Wahrheit  – Gott  –, erkenne du, erkenne du,}
    \line { " " Gott erkenne du.}
  }
}
