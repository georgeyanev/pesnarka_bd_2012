\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Lebendinge, quellende fließende Kraft" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

    \line { " " Lebendige, quellende, fließende Kraft,}

    \line { " " lebendige, quellende, fließende Kraft. }

    \line { " " Sun me sun, Sun me sun binom to meto. (2) }




  }
}
