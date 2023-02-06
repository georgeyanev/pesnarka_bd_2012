\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir die Wahrheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
        \line { " "Sag du mir die Wahrheit,}
        \line { " "die Freiheit für meine Seele bringt. }
    }
}
