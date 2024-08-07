\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Du bist die offenbarte Liebe" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {
  \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Du bist die offenbarte Liebe zu mir, oh Herr.}
    \line { " "Meine Seele sehnt sich nach Deiner Reinheit,}
    \line { " "Meine Seele sehnt sich nach Deinem Licht.}

  }

  }

}
