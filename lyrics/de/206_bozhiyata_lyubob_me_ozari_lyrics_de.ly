\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die göttliche Liebe hat mich erleuchtet" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
        "Die göttliche Liebe weitete meine Seele und erfüllte mein Herz mit Strahlen."
        "Aus tiefsten Tiefen erhob sie meinen Geist zu den Höhen"
        "auf ihren gesegneten Schwingen,"
        "vom Anblick Gottes erleuchtet, erleuchtet, vom Anblick Gottes erleuchtet."
        "Liebe erleuchtete mich, Liebe erleuchtete mich,"
        "sie weitete meine Seele, sie erhellte meine Seele,"
        "sie weitete meine Seele, sie erhellte meine Seele,"
        "meinen Geist stärkte sie; und ließ Güte in mich einziehen,"
        "und ließ Güte in mich einziehen, und ließ Güte in mich einziehen."
        }
      }
      
    }\hspace #0.1
  }
}
