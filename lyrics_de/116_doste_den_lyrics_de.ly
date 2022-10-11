\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ein Tag wird kommen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }



    \line { " "Ein Tag wird kommen, ein Tag wird kommen,}

    \line { " "ein Tag wird kommen, ein Tag wird kommen.}

    \line { " "Er wird ein heller Tag sein,}

    \line { " "er wird ein heller Tag sein,}

    \line { " "er wird ein heller Tag sein.}
    \line { " "Säe, säe!}

    \line { " "Erbaue, erbaue, erbaue }

    \line { " "erbaue das Gute!}

    \line { " "Und die Freude wird dich gut belohnen.}
  }
}
