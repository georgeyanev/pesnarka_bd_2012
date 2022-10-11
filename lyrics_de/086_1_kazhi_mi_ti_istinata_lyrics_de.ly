\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Sage mir die Wahrheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
        \line { " " } 
        \line { " "Sage du mir die Wahrheit,}
        \line { " "die Freiheit bringt für meine Seele. }
    }
}
