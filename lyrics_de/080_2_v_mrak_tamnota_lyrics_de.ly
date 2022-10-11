\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "In der Finsternis, in der Dunkelheit" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Das Leben war in Finsternis und Dunkelheit. }

    \line { " " Aber die Sonne des Lebens leuchtete auf über uns.}

    \line { " " Und wir gingen auf dem Weg, rein und heilig für uns. (2)}

    \line { " " Rein und heilig für uns,}

    \line { " "rein und heilig für uns, }
    \line { " " rein und heilig für uns. }

  }


}
