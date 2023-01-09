\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Der Frieden kommt schon" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Der Frieden kommt schon,  der Frieden kommt schon, }
     \line { " " der Frieden kommt schon, so hat unser Herr gesagt.  }

    \line { " "So hat unser Herr gesagt: Der Frieden kommt schon, }
  \line {" "der Frieden kommt schon, so hat unser Herr gesagt. }

  }
}
