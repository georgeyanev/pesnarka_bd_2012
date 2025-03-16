\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Wind weht II" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Die göttliche Sonne scheint heute,"
          "die göttliche Sonne scheint heute,"
          "die göttliche Sonne scheint heute."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Wehe, Wind, wehe sanft,  "
          "wehe sanft, blicke mild, "
          "wehe sanft, lass das Blatt sich entfalten! "
          "Lass das Blatt erzittern, öffne die Blüte,  "
          "öffne die Blüte, verteile die Frucht, "
          "öffne die Blüte, verteile die Frucht. "
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Auf, möge er gehen, "
          "auf, möge er lernen, möge er lernen, möge er erhalten,"
          "möge er erhalten, möge er lernen."
          "Auf, möge er gehen,"
          "damit es ihm wohl ergeht."
        }
      }
    }\hspace #0.1
  }
}
