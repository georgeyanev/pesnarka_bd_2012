\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Psalm 91" }
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #18
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


    \line { " "Wer im Schutz des Höchsten wohnt, }

    \line { " "bleibt im Schatten des Allmächtigen.}

    \line { " "Ich sage zum Herrn:}

    \line { " "Meine Zuflucht und meine Burg, mein Gott, }

    \line {  " "ich vertraue auf Ihn! }

  }

}
