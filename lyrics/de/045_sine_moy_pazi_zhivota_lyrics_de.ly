\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Mein Sohn, bewahre das Leben" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Mein Sohn, bewahre das Leben,"
          "die in dir verborgene Glut."
          "Es ist seinem Sinn nach kostbar"
          "und ein herrliches Geschenk!"
          "Unsterblicher, unvergänglicher Geist,"
          "der, der ewig wacht"
          "und unermüdlich arbeitet,"
          "unaufhörlich in dir erschafft."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Du bist dieses wirkliche Leben;"
          "Sohn, erkenne dich!"
          "Deine Kraft ist groß,"
          "deine Tage haben kein Ende."
          "Du erschaffst jede Regung,"
          "das edle Streben,"
          "die hohen Ideale"
          "und die schöne Sehnsucht."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Dieses Fleisch ist dein Gewand,"
          "und die Erde eine Schulbank."
          "Du lebst und lernst,"
          "wie ein kleiner Sohn Gottes."
          "Kühnheit, mein liebes Leben,"
          "mit dir ist die göttliche Liebe!"
          "Sie ruft dich immer nach oben"
          "in die Vollkommenheit und in die neue Welt."
        }
      }
    }
    \hspace #0.1
  }
}
