\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein gütiges Wort auf den Lippen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ein gütiges Wort auf den Lippen,"
          "das ist der Schlüssel der Herzen,"
          "der Herzen, der Herzen,"
          "das ist der Schlüssel der Herzen."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Ein liebevoller Blick in den Augen,"
          "das ist die Sprache der Seelen."
          "Ein zartes Gefühl, das verströmt wurde,"
          "alles Böse ist geschmolzen."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Ein starker Wille krönt jedes Werk und jede Tat,"
          "und die Liebe erbaut mit ihnen dieses Leben,"
          "das hier geboren wird."
        }
      }
       
    }\hspace #0.1
  }
}
