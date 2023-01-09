\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Herr, wie sehr ich Dich liebe" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #15
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

    \line { " "Herr und Gott, wie sehr liebe ich Dich!}

    \line { " "Gott, Mein Herr, wie sehr liebe ich Dich!}

    \line { " "Ich liebe Dich, Herr.}

    \line { " "Ich liebe Deine Bäumchen, }

    \line { " "ich liebe Deine Blümchen,}

    \line { " "ich liebe Deine Bäche,}

    \line { " "ich liebe Deine Berge.}

    \line { " "Herr, ich liebe alles,}

    \line { " "was Du erschaffen hast.}

    \line { " "Ich liebe Dich, ich liebe dich,}

    \line { " "ich liebe dich Herr!}

  }
}
