\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Sag du mir die Wahrheit" }
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
