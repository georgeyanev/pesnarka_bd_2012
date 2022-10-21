\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Gnade, Güte" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }


\line { " "Gnade, Güte}

\line { " "flößte Er ein. }

\line { " "Gnade, Güte flößte Er in mir ein.}
  }
}
