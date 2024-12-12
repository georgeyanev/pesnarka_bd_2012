\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Psalm 91" }
\markup \null
\markup \abs-fontsize #11 {
  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

    \column {

      \line { " "Wer im Schutz des Höchsten wohnt, }

      \line { " "bleibt im Schatten des Allmächtigen.}

      \line { " "Ich sage zum Herrn: Meine Zuflucht und meine Burg,}

      \line { " " mein Gott, ich vertraue auf Ihn! }

    }
  }
}
