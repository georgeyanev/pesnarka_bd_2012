\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ich höre" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #28
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }
     \line { " Ich höre. (4)" }



  }
}
