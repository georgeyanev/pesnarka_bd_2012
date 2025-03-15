\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Im Anfang war das Wort" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Im Anfang war das Wort, und das Wort war bei Gott, und das Wort war Gott."
          "Dieses war im Anfang bei Gott. Alles wurde durch dasselbe,"
          "und ohne dasselbe wurde auch nicht eines, das geworden ist."
          "In ihm war Leben, und das Leben war das Licht der Menschen."
          "Und das Licht scheint in der Finsternis, und die Finsternis hat es nicht erfasst."
        }
      }

    }\hspace #0.1
  }
}