\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Sag du mir die Wahrheit" }

\markup \null
\markup \null

\markup \abs-fontsize #10 {
     \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
        \line { " "Sag du mir die Wahrheit, die Freiheit für meine Seele bringt. }
    }
}
