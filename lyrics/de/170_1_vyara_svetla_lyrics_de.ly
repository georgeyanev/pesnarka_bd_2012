\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube I" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
%  \override #'(baseline-skip . 2)

\column {

  \line { " "Lichter Glaube, starker Glaube! Er stützt den Geist, der das Leben gebiert.}

  }
}
