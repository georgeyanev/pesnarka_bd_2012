\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ein gütiges Wort auf den Lippen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Ein gütiges Wort auf den Lippen, }

    \line { " "das ist der Schlüssel der Herzen,}

    \line { " "der Herzen, der Herzen,}

    \line { " "das ist der Schlüssel der Herzen.}
    \line { " " }

    \line { " "Ein liebevoller Blick in den Augen,}

    \line { " "das ist die Sprache der Seelen.}

    \line { " "Ein zartes Gefühl, das verströmt wurde,}

    \line { " "alles Böse ist geschmolzen.}
    \line { " " }

    \line { " "Ein starker Wille krönt jedes Werk und jede Tat,}

    \line { " "und die Liebe erbaut mit ihnen dieses Leben, }

    \line { " "das hier geboren wird.}

  }
}
