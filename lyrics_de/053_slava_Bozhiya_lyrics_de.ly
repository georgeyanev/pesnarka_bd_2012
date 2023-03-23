\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ruhm Gottes" }
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Nicht mir, nicht mir, }
    \line { " " sondern Deinem Namen gib, oh Herr Ruhm, Ruhm, Ruhm.}
  }
}
