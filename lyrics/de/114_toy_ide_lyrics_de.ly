\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Er kommt" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 

    \line { " " Er kommt, Er kommt, Er kommt, }

    \line { " " Er selbst kommt,  }

    \line { " "Er kommt, Er kommt, Er kommt,  }

    \line { " "Er selbst kommt,  }

    \line { " "Er kommt, Er kommt, Er kommt, Er kommt }

    \line { " " Er selbst kommt,}

    \line { " " um zu helfen, um zu helfen, um zu helfen.  }

    \line { " " Der Mächtige, der Starke, um zu helfen,  }

    \line { " " Der Mächtige, der Starke, um zu helfen,  }

    \line { " " um zu helfen, um zu helfen.  }

    \line { " "Wir werden mit Liebe arbeiten,  }

    \line { " "  wir werden mit Liebe arbeiten,  }

    \line { " " Er helfe, Er helfe. }
    \line { " "Der Mächtige, der Starke, }
    \line { " " Er helfe, Er helfe, Er helfe. }
  }
  }
}
