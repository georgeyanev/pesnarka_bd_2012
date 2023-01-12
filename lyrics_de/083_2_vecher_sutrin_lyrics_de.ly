\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Abends, morgens" }


\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)



  \column {
    \line { "   "Abends, morgens es kommt, es geht, }
    \line { "   " abends, morgens, es kommt. es geht.}
     \line { "   " }
    \line { "   " Es geht. es kommt,}
    \line { "   " es geht, es kommt,}
    \line { "   " es geht, es kommt, es kommt.}

  }
}
