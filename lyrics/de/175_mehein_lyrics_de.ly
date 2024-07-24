\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hejn" }
\markup \null
\markup \null
\markup  \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {



    \line { 1.  Ohne dich ist Finsternis, ohne dich ist Gram.}
    \line { "   " Oh, göttlicher Strahl, bescheine mich.}
    \line { "   " Trage in mein Herz Freude und Frieden.}
    \vspace #0.5
    \line {2. Ich erwache aus tiefem Schlaf }
    \line { "   " und rufe dich als Kind an.}
    \line { "   " Ich glaube immer, dass du}
    \line { "   " über mich mit mütterlicher Liebe wachst.}

  }
}
