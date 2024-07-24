\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Hätte ich auf Dich gehört" }
\markup \null
\markup \null
\markup  \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " " Hätte ich auf Dich gehört, hätte ich auf Dich gehört,}

\line { " " wenn ich auf dich gehört hätte,}

\line { " " hätte sich das Gute in mir manifestiert, }

\line { " " hätte sich das Gute in mir offenbart.}

  }
}
