\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Frühling" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
\hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 

    \line { Hört die Stimme dieses Liedes, die der Frühling schon verbreitet.}

    \line {Sie ist eine große Gabe für das Leben, sie ist eine große Gabe für das Leben. }


  }
}
