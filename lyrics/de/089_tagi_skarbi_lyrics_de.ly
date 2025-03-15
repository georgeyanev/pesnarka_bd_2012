\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Trauer, Leid" }
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Hebe auf Trauer und Leid, leg sie beiseite,"
          "und geh gerade."
          "Stolpere nicht, hebe alles auf,"
          "lege es beiseite und gehe gerade."
          "Gehe, gehe, gehe, gerade gehe!"
          "Gehe, gehe, gehe, gerade gehe!"
          "Gehe, gehe, gehe, gerade gehe!"
          "Gehe, gehe, gerade gehe,"
          "gehe, gehe gerade gehe!"
        }
      }

    }\hspace #0.1
  }
}
