\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ruhm Gottes" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
   \hspace #30
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Nicht mir, nicht mir, }
    \line { " " sondern Deinem Namen gib,}
    \line { " " oh Herr Ruhm, Ruhm, Ruhm.}
  }
}
