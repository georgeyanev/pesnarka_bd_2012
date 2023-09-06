\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Ich höre" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    
     \line { " Ich höre, ich höre, ich höre, ich höre." }

  }
}
