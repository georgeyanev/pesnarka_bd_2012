\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Zweiter göttlicher Tag" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


    \line { " " }

  \line { " "Und Gott sprach: Es werde eine Feste zwischen}
  \line { " "den Wassern, die da scheide zwischen den Wassern.}

  \line { " " Da machte Gott die Feste und schied das Wasser}
  \line { " "unter der Feste von dem Wasser über der Feste.}
  \line { " "Und es geschah so.}

  \line { " "Und Gott nannte die Feste Himmel. Da ward aus}
  \line { " "Abend und Morgen der zweite Tag.}

  }
}
