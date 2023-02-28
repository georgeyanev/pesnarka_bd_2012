\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Frühling" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

   \line { " "  Hört die Stimme dieses Liedes,}

   \line { " "  die der Frühling schon verbreitet.}

   \line { " "  Sie ist eine große Gabe für das Leben,}

  \line { " "   sie ist eine große Gabe für das Leben. }


  }
}
