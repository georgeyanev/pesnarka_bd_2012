\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Herr, wie sehr ich Dich liebe [običam]" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Herr, wie liebe [ljubia] ich Dich!"
         "Gott, mein Herr, wie liebe [ljubia] ich Dich!"
         "Ich liebe [običam] Dich, Herr!"
         "Ich liebe [običam] Deine Bäumchen,"
         "ich liebe [običam] Deine Blümchen,"
         "ich liebe [običam] Deine Bächlein,"
         "ich liebe [običam] Deine Berge."
         "alles, [običam] Herr,"
         "was Du erschaffen hast."
         "Ich liebe [običam] Dich, ich liebe [običam] dich,"
         "ich liebe [običam] dich, Herr!"
        }
      }
    }\hspace #0.1
  }
}
