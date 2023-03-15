\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Lichter Glaube I" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #21
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
%  \override #'(baseline-skip . 2)

\column {

  \line { " "Lichter Glabe, starker Glaube!}

  \line { " "Er stützt den Geist, }
   \line { " "er stützt den Geist, }
  \line { " "der das Leben gebiert.}

  }
}
