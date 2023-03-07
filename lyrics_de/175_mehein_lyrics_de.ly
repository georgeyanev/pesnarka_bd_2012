\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hein" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #8
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { 1. Ohne dich ist Finsternis, ohne dich ist Gram. }

 \line { "   " Oh, göttlicher Strahl, bescheine mich.}

 \line { "   " Trage in mein Herz Freude und Frieden. }

 \line { "   " }

 \line { 2. Ich erwache aus tiefem Schlaf}

 \line { "   " und rufe dich als Kind an.}

 \line { "   " Ich glaube immer, dass du}

 \line { "   " über mich mit mütterlicher Liebe wachst.}

  }
}
