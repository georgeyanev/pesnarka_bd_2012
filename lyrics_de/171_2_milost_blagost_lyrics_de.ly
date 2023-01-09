\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Gnade, Güte" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Gnade, Güte}

\line { " "flößte Er ein. }

\line { " "Gnade, Güte flößte Er in mir ein.}
  }
}
