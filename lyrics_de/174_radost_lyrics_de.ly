\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Zaglavie DE" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Freude, Freude, Freude für mein Leben, }

    \line { " "du erfreust mein Herz, }

    \line { " "du erfreust mein Herz.}
  }
}
