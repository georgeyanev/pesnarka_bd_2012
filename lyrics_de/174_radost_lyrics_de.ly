\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Freude" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Freude, Freude, Freude für mein Leben, }

    \line { " "du erfreust mein Herz, }

    \line { " "du erfreust mein Herz.}
  }
}
