\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied der Vokale" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

    \column {
      \line { " "a ... (12)}
      \line { " "o ... (12)}
      \line { " "u ...  (12)}
      \line { " "a o u ... (12)}
      \line { " "a ...  (12)}
      \line { " "e ... (12)}
      \line { " "i ... (12)}

      \line { " " a e i ...(12)}
    }
  }
}
