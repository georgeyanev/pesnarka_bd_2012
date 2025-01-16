\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dir singen wir" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Dir singen wir, Dir danken wir,"
          "Dich lobpreisen wir, unser Gott."
          "Und wir beten zu Dir,"
          "und wir beten zu Dir,"
          "und wir beten zu Dir,"
          "oh, unser Gott."
        }
      }
    }
    \hspace #0.1
  }
}
