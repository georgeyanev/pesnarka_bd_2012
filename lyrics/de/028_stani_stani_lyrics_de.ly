\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Stehe auf, stehe auf" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Steh auf, steh auf und der Herr wird dich beleben;"
          "steh auf, steh auf und der Herr wird dich auferstehen lassen; "
          "steh auf, steh auf und beginne mit Liebe;"
          "stehe auf, stehe auf und kleide dich in Wahrheit."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Kleide dich in Wahrheit und erbaue immer mit ihr,"
          "sie wird dich sogar erneuern und mit Geist dich erleuchten."
        }
      }
    }\hspace #0.1
  }
}












%---------------------------------------------------------------------
