\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Wind weht II" }

\markup \null
\markup \null
\markup \abs-fontsize #11 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { " "Die göttliche Sonne scheint heute,  }

    \line { " "die göttliche Sonne scheint heute,  }

    \line { " "die göttliche Sonne scheint heute. }

    \line { " "Wehe, Wind, wehe sanft,  }

    \line { " "wehe sanft, blicke mild, }

    \line { " "wehe sanft, lass das Blatt sich entfalten! }

    \line { " "Lass das Blatt erzittern, öffne die Blüte,  }

    \line { " "öffne die Blüte, verteile die Frucht, }

    \line { " "öffne die Blüte, verteile die Frucht. }

    \line { " "Auf, möge er gehen, }

    \line { " " auf, möge er lernen, möge er lernen, möge er erhalten, }

    \line { " "möge er erhalten, möge er lernen. }

    \line { " "Auf, möge er gehen,  }

    \line { " "damit es ihm wohl ergeht. }

  }
    }
}
