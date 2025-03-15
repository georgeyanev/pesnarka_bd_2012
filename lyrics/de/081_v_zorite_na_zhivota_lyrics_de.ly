\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "In der Morgenröte des Lebens" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "In der Morgenröte des Lebens,"
          "in der Morgenröte des Lebens,"
          "ging die Sonne auf,"
          "ging die Sonne auf;"
          "sie zog die Grenzen der Natur,"
          "sie zog die Grenzen der Natur."
          "In meiner Seele ließ sie den mächtigen Geist erwachen,"
          "in meiner Seele ließ den mächtigen Geist erwachen"
          "und in meinem Herzen erweckte sie die Liebe,"
          "und in meinem Herzen erweckte sie die Liebe,"
          "sie erweckte, sie erweckte, sie erweckte"
          "in meinem Herzen die Liebe."
        }
      }

    }\hspace #0.1
  }
}
