\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Alles im Leben ist erreichbar" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
         "Alles im Leben ist erreichbar,"
         "wenn die Zeit gut ist,"
         "und wir vernünftig sind."
         "Denn das Gute ist das Fundament,"
         "und die Vernünftigkeit ein Ziel,"
         "mit denen der Geist die Zukunft aufbaut,"
         "die Zukunft, die große Zukunft."
        }
      }
    }\hspace #0.1
  }
}
