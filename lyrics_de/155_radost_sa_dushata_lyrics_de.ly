\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Freude für die Seele" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
    \hspace #10
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {
    \line { " " }

\line { " "Freude, Freude für die Seele bringt die Reinheit. }

\line { " "Freude, Freude für die Seele bringt die Reinheit. }

\line { " "Seid rein, wie die Bienen.}

\line { " "Seid rein wie die Blumen.}

  }
}
