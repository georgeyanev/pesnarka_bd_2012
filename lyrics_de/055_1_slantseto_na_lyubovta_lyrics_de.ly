\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne der Liebe" }
\markup \null

\markup \fontsize #deCoupletFontSize {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Die Sonne der Liebe}

    \line { "   " geht schon auf über der Welt.}

    \line { "   " Überall hin sendet sie Licht}

    \line { "   " und verteilt Wärme.}

    \line {  "   "  Wir sind Strahlen der Sonne,}

    \line { "   " bringen das neue Leben.}

    \line { "   " Wir sind Strahlen der Sonne,}

    \line { "   " bringen das neue Leben.}



  }

}

%---------------------------------------------------------------------
