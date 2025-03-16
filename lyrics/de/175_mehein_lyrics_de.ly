\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Me-hejn" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Ohne dich ist Finsternis, ohne dich ist Gram."
          "Oh, göttlicher Strahl, bescheine mich."
          "Trage in mein Herz Freude und Frieden."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Ich erwache aus tiefem Schlaf"
          "und rufe dich als Kind an."
          "Ich glaube immer, dass du"
          "über mich mit mütterlicher Liebe wachst."
        }
      }
    }\hspace #0.1
  }
}
