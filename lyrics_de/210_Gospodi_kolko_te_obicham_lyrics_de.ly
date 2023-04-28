\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Herr, wie sehr ich Dich liebe" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #15
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Herr, wie liebe ich Dich!}

    \line { " "Gott, mein Herr, wie iebe ich Dich!}

    \line { " "Ich liebe Dich, Herr!}

    \line { " "Ich liebe Deine Bäumchen, }

    \line { " "ich liebe Deine Blümchen,}

    \line { " "ich liebe Deine Bächlein,}

    \line { " "ich liebe Deine Berge.}

    \line { " " alles, Herr,}

    \line { " "was Du erschaffen hast.}

    \line { " "Ich liebe Dich, ich liebe dich,}

    \line { " "ich liebe dich, Herr!}

  }
}
