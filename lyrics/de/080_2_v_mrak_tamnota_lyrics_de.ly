\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "In der Finsternis, in der Dunkelheit" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {
      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Das Leben war in Finsternis und Dunkelheit. }

    \line { " " Aber die Sonne des Lebens leuchtete auf in uns.}

    \line { " " Und wir gingen auf den Weg, rein und heilig für uns.}
    \line { " " Und wir gingen auf den Weg, rein und heilig für uns.}

    \line { " " Rein und heilig für uns,}

    \line { " "rein und heilig für uns, }
    \line { " " rein und heilig für uns. }

  }
      }

}
