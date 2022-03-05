\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Wehe, Wind!" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

    \line { " "Die göttliche Sonne scheint heute,  }

    \line { " "die göttliche Sonne scheint heute,  }

    \line { " "die göttliche Sonne scheint heute. }

    \line { " "Wehe, Wind, wehe leise,  }

    \line { " "wehe leise, schaue lieb, }

    \line { " "wehe leise, öffne die Blätter! }

    \line { " "Lasse die Blätter flattern, öffne die Blüten,  }

    \line { " "öffne die Blüten, verteile die Früchte, }

    \line { " "öffne die Blüten, verteile die Früchte. }

    \line { " "Hai di di di di, man soll gehen, }

    \line { " "  um zu lernen, zu lernen, um zu erhalten, }

    \line { " "zu erhalten, etwas zu lernen. }

    \line { " "Hai di di di di, man soll gehen,  }

    \line { " "man soll gehen und das Gute sehen. }

  }
}
