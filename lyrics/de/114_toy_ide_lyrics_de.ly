\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Er kommt" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Er kommt, Er kommt, Er kommt,"
          "Er selbst kommt,"
          "Er kommt, Er kommt, Er kommt,"
          "Er selbst kommt,"
          "Er kommt, Er kommt, Er kommt, Er kommt"
          "Er selbst kommt,"
          "um zu helfen, um zu helfen, um zu helfen."
          "Der Mächtige, der Starke, um zu helfen,"
          "Der Mächtige, der Starke, um zu helfen,"
          "um zu helfen, um zu helfen."
          "Wir werden mit Liebe arbeiten,"
          "wir werden mit Liebe arbeiten,"
          "Er helfe, Er helfe."
          "Der Mächtige, der Starke,"
          "Er helfe, Er helfe, Er helfe."
        }
      }
    }\hspace #0.1
  }
}
