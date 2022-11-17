\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Dritter göttlicher Tag" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }


    \line { " "Und Gott sprach: Es sammle sich das Wasser}
    \line { " "unter dem Himmel an besondere Orte, dass man}
    \line { " "das Trockene sehe. Und es geschah so.}
    \line { " " }
    \line { " "Und Gott nannte das Trockene Erde, und die}
    \line { " "Sammlung der Wasser nannte er Meer.}
    \line { " " }
    \line { " "Und Gott sprach, und die Erde ließ aufgehen}
    \line { " "Gras und Kraut, das Samen bringt, ein jedes nach}
    \line { " "seiner Art, und Bäume, die da Früchte tragen, ein}
    \line { " "jeder nach seiner Art. Und Gott sah, dass es gut war.}

    \line { " " }
    \line { " " Da ward aus Abend und Morgen der dritte Tag.}


  }
}
