\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ein Tag wird kommen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Ein Tag wird kommen, ein Tag wird kommen,}

    \line { " "ein Tag wird kommen, ein Tag wird kommen.}

    \line { " "Er wird ein lichter Tag sein,}

    \line { " "er wird ein lichter Tag sein,}

    \line { " "er wird ein lichter Tag sein.}
    \line { " "Säe, säe!}

    \line { " "Baue, Baue, baue }

    \line { " "errichte gut!}

    \line { " "Und die Freude wird dich gut belohnen.}
  }
}
