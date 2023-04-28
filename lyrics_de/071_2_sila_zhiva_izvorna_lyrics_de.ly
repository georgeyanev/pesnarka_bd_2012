\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Lebendinge, quellende fließende Kraft" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Lebendige, quellende, fließende Kraft,}

    \line { " " lebendige, quellende, fließende Kraft. }

    \line { " " Sun me sun, Sun me sun binom to meto. }
    \line { " " Sun me sun, Sun me sun binom to meto. }




  }
}
