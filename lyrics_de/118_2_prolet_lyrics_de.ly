\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Frühling" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Hört die Stimme dieses Liedes,}

    \line {   "   "  die der Frühling schon verbreitet.}

    \line {   "   " Sie ist eine große Gabe für das Leben,}

   \line {   "   " sie ist eine große Gabe für das Leben. }

    \line { " " }

    \line { 2. Schönheit und Duft strömen aus  }

    \line {   "   "  reichlich sprudelt die Freude,}

    \line {   "   " Hört und singt im Frühling, }

    \line {   "   " Hört und singt im Frühling. }


  }
}
