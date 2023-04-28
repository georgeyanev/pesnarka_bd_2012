\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ruhm Gottes" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Nicht mir, nicht mir, }
    \line { " " sondern Deinem Namen gib,}
    \line { " " oh Herr Ruhm, Ruhm, Ruhm.}
  }
}
