\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ruhm Gottes" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Nicht mir, nicht mir, }
    \line { " " sondern Deinem Namen gib,}
    \line { " " oh Herr Ruhm, Ruhm, Ruhm.}
  }
    }
}
