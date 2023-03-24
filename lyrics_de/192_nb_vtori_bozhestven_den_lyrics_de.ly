\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Zweiter göttlicher Tag" }
\markup \null
%\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


    \line { " " }

  \line { " "Und Gott sprach: „Es werde Weite zwischen den Wassern.“ }
  \line { " " Und da machte Gott die Weite und schied Gott das Wasser}
  \line { " "über der Weite von dem Wasser unter der Weite.}
  \line { " "Und es geschah so.}
  \line { " "Und Gott nannte die Weite Himmel.  }
  \line { " "Und es ward Abend und ward Morgen, der zweite Tag.}

  }
}
