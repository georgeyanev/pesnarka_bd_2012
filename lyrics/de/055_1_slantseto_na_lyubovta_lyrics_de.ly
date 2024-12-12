\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne der Liebe" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { "   " Die Sonne der Liebe}

    \line { "   " geht schon auf über der Welt.}

    \line { "   " Überall hin sendet sie Licht}

    \line { "   " und verteilt Wärme.}

    \line {  "   "  Wir sind Strahlen der Sonne,}

    \line { "   " bringen das neue Leben.}

    \line { "   " Wir sind Strahlen der Sonne,}

    \line { "   " bringen das neue Leben.}

  }

  }

}

%---------------------------------------------------------------------
