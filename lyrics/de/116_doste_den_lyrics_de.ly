\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ein Tag wird kommen" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 

    \line { " "Ein Tag wird kommen, ein Tag wird kommen,}

    \line { " "ein Tag wird kommen, ein Tag wird kommen.}

    \line { " "Er wird ein lichter Tag sein, er wird ein lichter Tag sein,}
    \line { " "er wird ein lichter Tag sein.}
    \line { " "Säe, säe! Baue, Baue, baue errichte gut! (*errichte Gutes!)}

    \line { " "Und die Freude wird dich gut belohnen.}
  }
}
