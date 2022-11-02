\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hein" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #8
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

 \line { 1. Ohne dich ist Finsternis, ohne dich ist Trauer. }

 \line { "   " Oh, göttlicher Strahl, bescheine mich.}

 \line { "   " Füge in meinem Herzen Freude und Frieden. }

 \line { "   " Ich glaube, dass du über mich mit mütterlicher Liebe wachst. }
 \line { "   " }

 \line { 2. Ich erwache aus tiefem Schlaf}

 \line { "   " und rufe dich als Kind an.}

 \line { "   " Ich glaube immer, dass du}

 \line { "   " über mich mit mütterlicher Liebe wachst.}

  }
}
