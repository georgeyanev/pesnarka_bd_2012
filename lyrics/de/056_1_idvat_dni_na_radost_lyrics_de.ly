\version "2.26.0"

\markup \fill-line { \fontsize #deTitleFontSize "Es kommen die Tage der Freude" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Es kommen die Tage der Freude, es kommen die Tage der Freude,"
          "es kommen die Tage der Freude, für diejenigen, die Gott dienen."
        }
      }
    }\hspace #0.1
  }
}
