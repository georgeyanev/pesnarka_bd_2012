\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "In der Morgenröte des Lebens" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " In der Morgenröte des Lebens,}

    \line { " " in der Morgenröte des Lebens}

    \line { " " ging die Sonne auf, }

    \line { " " ging die Sonne auf; }

    \line { " " sie zog die Grenzen der Natur, }

    \line { " " sie zog die Grenzen der Natur. }

    \line { " " In meiner Seele ließ sie den mächtigen Geist erwachen, }

    \line { " " in meiner Seele ließ den mächtigen Geist erwachen }

    \line { " " und in meinem Herzen erweckte sie die Liebe, }

    \line { " " und in meinem Herzen erweckte sie die Liebe, }

    \line { " " sie erweckte, sie erweckte, sie erweckte }

    \line { " "  in meinem Herzen die Liebe.  }


  }
    }

}
