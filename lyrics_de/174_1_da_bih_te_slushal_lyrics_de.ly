\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Hätte ich auf Dich gehört" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

\line { " " Hätte ich auf dich gehört, hätte ich auf dich gehört,}

\line { " " wenn ich auf dich gehört hätte,}

\line { " " hätte sich das Gute in mir geäußert, }

\line { " " hätte sich das Gute in mir offenbart.}

  }
}
