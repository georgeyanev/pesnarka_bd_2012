\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "In der Morgenröte des Lebens" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " In der Morgenröte des Lebens,}

    \line { " " in der Morgenröte des Lebens}

    \line { " " ging die Sonne auf, }

    \line { " " ging die Sonne auf. }

    \line { " " Sie zeichnete die Grenzen der Natur, }

    \line { " " sie zeichnete die Grenzen der Natur. }

    \line { " " In meiner Seele erweckte sie einen mächtigen Geist  }

    \line { " " in meiner Seele erweckte sie einen mächtigen Geist }

    \line { " " und in meinem Herzen erweckte sie die Liebe, }

    \line { " " und in meinem Herzen erweckte sie die Liebe, }

    \line { " " sie erweckte, sie erweckte,  }

    \line { " " sie erweckte in meinem Herzen die Liebe.  }


  }


}
