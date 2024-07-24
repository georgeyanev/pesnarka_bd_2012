\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Morgenröte des neuen Lebens" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #25
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " " }
    \line { " " Die wunderbare Morgenröte bricht an,}

    \line { " " die Morgenröte des neuen Lebens,}

    \line { " " die mich im Leben ruft.}

    \line { " " Die wunderbare Morgenröte bricht an,}

    \line { " " die Morgenröte des neuen Lebens.}

  }
}
