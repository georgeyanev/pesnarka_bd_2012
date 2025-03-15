\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ach, du mein Sohn" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ich werde mich verjüngen, du wirst dich verjüngen, er wird sich verjüngen."
          "Das sagte mir die Liebe. Das sagte mir die Liebe."
          "Wir, die wir dem Weg des Guten folgen, werden uns verjüngen,"
          "ihr, die ihr dem Weg des Guten folgt, werdet euch verjüngen."
          "sie, die dem Weg des Guten folgt, werden sich verjüngen."
          "Das sagte uns die Liebe. Das sagte uns die Liebe."
        }
      }
    }\hspace #0.1
  }
}
