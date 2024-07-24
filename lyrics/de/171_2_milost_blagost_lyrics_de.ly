\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gnade, Güte" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Gnade, Güte flößte Er mir ein. }

\line { " "Gnade, Güte flößte Er mir ein, flößte Er mir ein, flößte Er mir ein.}
  }
}
