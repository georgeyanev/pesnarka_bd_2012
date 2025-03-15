\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Kraft, Leben, Gesundheit" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Kraft, Leben, Gesundheit – sie sind eins."
          "Diener des Geistes, Überbringer der Freude,"
          "Stütze der Jugend, Stütze der Jugend, sie sind eins."
        }
      }
    }\hspace #0.1
  }
}