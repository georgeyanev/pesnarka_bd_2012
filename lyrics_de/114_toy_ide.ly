\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Er kommt" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

    \line { " " Er kommt, Er kommt, Er kommt, }

    \line { " " Er ist es, der kommt,  }

    \line { " "Er kommt, Er kommt, Er kommt,  }

    \line { " "Er ist es, der kommt,  }

    \line { " "Er kommt, Er kommt, Er kommt, Er  }

    \line { " " Erist es, der kommt,}
            \line { " "     um zu helfen, um zu helfen, um zu helfen.  }

    \line { " "Der Mächtige, der Starke, möge er helfen,  }

    \line { " "Der Mächtige, der Starke, möge er helfen,  }

    \line { " "um zu helfen, möge er helfen.  }

    \line { " "Wir werden mit Liebe arbeiten, wir  }

    \line { " "werden mit Liebe arbeiten,  }

    \line { " "möge Er helfen, möge Er helfen. }




  }


}
