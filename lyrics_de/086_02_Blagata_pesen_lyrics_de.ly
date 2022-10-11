\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Das gute Lied" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Sei dir bewusst, }
    \line { " "liebe, säe, errichte unaufhörlich }
    \line { " "und gib alles im Leben.}
    \line { " " Diese Wahrheit: Erkenne Gott, erkenne, erkenne,}
    \line { " "Erkenne Gott}
  }
}
