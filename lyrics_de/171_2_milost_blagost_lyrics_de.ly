\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Gnade, Güte" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Gnade, Güte flößte Er mir ein. }

\line { " "Gnade, Güte flößte Er mir ein, }
\line { " "flößte Er mir ein, flößte Er mir ein.}
  }
}
