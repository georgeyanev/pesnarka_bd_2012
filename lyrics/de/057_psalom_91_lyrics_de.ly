\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Psalom 91" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Wer im Schutz des Höchsten wohnt,"
          "bleibt im Schatten des Allmächtigen."
          "Ich sage zum Herrn: Meine Zuflucht und meine Burg,"
          "mein Gott, ich vertraue auf Ihn!"
        }
      }
    }\hspace #0.1
  }
}

