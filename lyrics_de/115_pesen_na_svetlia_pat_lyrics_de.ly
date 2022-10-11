\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied des lichten Weges" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

\line { " "Ich kann erreichen, was ich mir wünsche.  }

\line { " "Im Leben ist alles erreichbar! }

\line { " "Ich werde die göttlichen Güter  }

\line { " "in allen menschlichen Herzen tragen. }

\line { " "Dort, wo die Freude geboren wird,  }

\line { " "dort, wo die Liebe herrscht. }

  }
}
