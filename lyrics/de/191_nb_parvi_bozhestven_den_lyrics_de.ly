\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Erster göttlicher Tag" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Am Anfang schuf Gott Himmel und Erde."
          "Und die Erde war wüst und ungeordnet."
          "Es war keine Ordnung auf ihr."
          "und Finsternis war über der Tiefe"
          "und der Geist Gottes schwebte über den Wassern"
          "des Lebens."
          "Und Gott sprach: „Es komme das schöne Licht [videlina]!“"
          "Und es manifestierte sich in seinem Licht [svetlina]."
          "Und Gott sah, dass dieses gut war."
          "Da schied Gott das Licht [svetlina] von der Finsternis."
          "Und Gott nannte das Licht [svetlina] Tag und die Finsternis Nacht."
          "Und es ward Abend und es ward Morgen, der erste Tag."
        }
      }
    }\hspace #0.1
  }
}

