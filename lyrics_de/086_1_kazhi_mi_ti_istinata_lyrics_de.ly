\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir die Wahrheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
        \line { " " } 
        \line { " "Sage du mir die Wahrheit,}
        \line { " "die Freiheit bringt für meine Seele. }
    }
}
