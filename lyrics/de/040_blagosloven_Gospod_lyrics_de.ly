\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gelobt sei der Herr" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Gelobt sei der Herr, unser Gott,"
          "der Herr aller Zeiten!"
          "Gepriesen sei unser Vater,"
          "der Vater der lichtvollen Geister"
          "der lichtvollen Geister, der lichtvollen Geister,"
          "der lichtvollen Geister, der lichtvollen Geister."
        }
      }
    }\hspace #0.1
  }
}
