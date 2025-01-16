\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Oh, gütiger Meister" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Oh, gütiger Meister,"
          "du bist voller Güte,"
          "deine Worte sind beflügelt,"
          "voller Weisheit und Licht."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Du bist ein Gesandter Gottes"
          "inmitten gequälter Seelen."
          "Gieße in uns Frieden und Liebe,"
          "ein neues Leben und glückliche Tage."
        }
      }

    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold "3."
        \column {
          "In Kummer, Unglück und Elend"
          "bist du allein unsere Zuflucht,"
          "du hast uns Trost gebracht,"
          "vor Dir, mein Meister, verneigen wir uns!"
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Deine Worte – reine Perlen,"
          "dein Bild – Licht,"
          "oh, glücklicher Meister,"
          "ergieße in unsere Herzen die Wärme!"
        }
      }
      % adds vertical spacing between verses
    }\hspace #0.1
  }
}