\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein guter Tag" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
           "Inspiration, Inspiration, Inspiration, Inspiration, Inspiration, du bist ein Segen."
        }
      }
    }\hspace #0.1
  }
}
