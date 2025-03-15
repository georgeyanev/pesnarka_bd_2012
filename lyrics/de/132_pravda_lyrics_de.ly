\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gerechtigkeit" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Gerechtigkeit, Gerechtigkeit, Gerechtigkeit,"
          "die du Freiheit für den Verstand bringst."
          "Schön und mächtig bist du"
          "und verteilst alles in der Welt."
          "Schön und mächtig bist du"
          "und verteilst alles in der Welt."
          "Gerechtigkeit, Gerechtigkeit!"
        }
      }
    }\hspace #0.1
  }
}
