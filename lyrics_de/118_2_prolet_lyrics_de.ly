\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Frühling" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

   \line { " "  Hört die Stimme dieses Liedes,}

   \line { " "  das der Frühling schon verbreitet.}

   \line { " "  Sie ist eine große Gabe für das Leben,}

  \line { " "   er ist eine große Gabe für das Leben. }


  }
}
