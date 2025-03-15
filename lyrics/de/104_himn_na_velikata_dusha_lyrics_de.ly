\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Hymne an die große Seele" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Die Sonne scheint, hell ist es überall,"
          "die Erde ist in ein warmes Gewand gehüllt."
          "Sie erweckt alles Lebendige;"
          "das Wasser fließt, das Gras sprießt,"
          "ein frischer Windhauch weht überall."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Alles bewegt sich, kriecht und krabbelt."
          "Die Vögel flattern, die Rehe laufen"
          "und der Wind weht und der Mensch steht still"
          "und denkt nach, was er tun soll."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Es erklingt ein fröhliches Lied:"
          "„Groß bist Du, oh Herr, groß sind Deine Werke,"
          "groß ist Dein Name über allem!“"
          "Du herrschst in der Kraft und im Leben,"
          "im Wissen, in der Weisheit, der Wahrheit und der Liebe."
          "Groß bist Du, oh Herr, groß sind Deine Werke,"
          "groß ist Dein Name über allem!“"
        }
      }
    }\hspace #0.1
  }
}
