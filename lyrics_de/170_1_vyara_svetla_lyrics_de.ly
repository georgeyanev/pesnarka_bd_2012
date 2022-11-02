\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #21
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
%  \override #'(baseline-skip . 2)

\column {

  \line { " "Lichter, starker Glaube!}

  \line { " "Er stützt den Geist, }

  \line { " "der das Leben gebiert. (2)}

  }
}
