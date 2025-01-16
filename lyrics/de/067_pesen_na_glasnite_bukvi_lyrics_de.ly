\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lied der Vokale" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "a ... (12)"
          "o ... (12)"
          "u ...  (12)"
          "a o u ... (12)"
          "a ...  (12)"
          "e ... (12)"
          "i ... (12)"
          "a e i ...(12)"
        }
      }
    }
    \hspace #0.1
  }
}
