\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Geist flüstert mir das zu" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
        "Mir wird es im Leben wohl ergehen,"
         "mein Geist und meine Seele flüstern mir das zu,"
         "mein Geist und meine Seele flüstern mir das zu."
         "Und der Geist flüstert mir das zu, flüstert mir das zu."
         "Der Geist und die Seele flüstern mir das zu."
        }
      }
    }\hspace #0.1
  }
}
