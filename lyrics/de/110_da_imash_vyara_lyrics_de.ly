\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Habe Glauben" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Habe Glauben, Glauben,"
          "Habe Glauben, Glauben,"
          "Habe Glauben, Glauben,"
          "Habe Glauben, Glauben, Glauben."
          "Habe Glauben, Glauben, Glauben."
        }
      }
    }\hspace #0.1
  }
}
