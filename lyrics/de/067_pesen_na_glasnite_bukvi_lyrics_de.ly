\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied der Vokale" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #25
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
