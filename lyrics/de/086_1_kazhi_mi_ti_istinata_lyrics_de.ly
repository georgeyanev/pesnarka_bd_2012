\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sag Du mir die Wahrheit" }

\markup \null
\markup \null

\markup \abs-fontsize #10 {
     \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
        \line { " "Sag Du mir die Wahrheit, die Freiheit für meine Seele bringt. }
    }
}
