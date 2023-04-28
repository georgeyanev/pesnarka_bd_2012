\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Hätte ich auf Dich gehört" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " " Hätte ich auf Dich gehört, hätte ich auf Dich gehört,}

\line { " " wenn ich auf dich gehört hätte,}

\line { " " hätte sich das Gute in mir manifestiert, }

\line { " " hätte sich das Gute in mir offenbart.}

  }
}
