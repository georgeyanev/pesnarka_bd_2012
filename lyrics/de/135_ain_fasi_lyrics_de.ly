\version "2.26.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ain fasi" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "In den Himmelsweiten, in den Himmelstiefen, in den Himmelshöhen,"
          "wo das Licht wohnt, und im Leben sich auf ewig manifestiert."
        
        }
      }
    }\hspace #0.1
  }
}

      