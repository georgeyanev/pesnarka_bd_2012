\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Unter allen Bedingungen" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Unter allen Bedingungen des Lebens"
          "verliere nicht deinen Frieden, deinen Frieden!"
          "Das Leben ist schön, wenn der Mensch mutig ist."
          "Das Leben ist schön, wenn der Mensch mutig ist."
        }
      }
    }\hspace #0.1
  }
}
