\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gib, gib" }

\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Gib, gib, gib alles, reine Saat, Weizenkorn."
          "Auf dass es auf den Acker gesät wird,"
          "auf den schönen Acker."
          "Auf dass es im Winter gereinigt wird."
          "Auf dass sich alles,  "
          "was auf dem Feld gesät wurde, am Leben erfreue,"
          "auf dem Feld, vom Himmel, auf dem Feld, vom Himmel."
        }
      }

    }\hspace #0.1
  }
}
