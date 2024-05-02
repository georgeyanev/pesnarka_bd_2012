\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Freude, Freude für die Seele" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
   \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

\line { " "Freude, Freude für die Seele bringt die Reinheit. }

\line { " "Freude, Freude für die Seele bringt die Reinheit. }

\line { " "Seid rein, wie die Bienen.}

\line { " "Seid rein wie die Blumen.}

  }
}
