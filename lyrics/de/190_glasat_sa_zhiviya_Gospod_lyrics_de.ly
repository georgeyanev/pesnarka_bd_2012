\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Stimme des lebendigen Herrn – Die Neue Auferstehung" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Steht auf, ihr Toten, steht auf aus dem Grab,"
          "Steht auf, erwacht zum Leben, ihr,"
          "die ihr aufgestanden seid,"
          "Steht auf, aufersteht, ihr,"
          "die ihr lebendig geworden seid,"
          "Hört, der Herr spricht jetzt zu euch:"
          "„Meine Hand hat nicht aufgehört, zu geben,"
          "Ich bin voll mit Überfluss"
          "und ich bin unerschöpflich   –  "
          "was ich für all jene aufbewahre,"
          "die mich lieben und sich vor meinem Namen fürchten,"
          "Seid gesegnet ihr, die ihr mich liebt,"
          "Steht auf, aufersteht, für den neuen Weg der Liebe.“"
        }
      }
      
    }\hspace #0.1
  }
}
