\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gehe auf, du, meine Sonne" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Geh auf, geh auf, du, meine Sonne,"
          "denn ich warte jeden Tag;"
          "nach dir sehnt sich mein Herz"
          "und auf meinem Weg bin ich ermüdet;"
          "Du bringst mir seliges Leben."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "Seliges Leben, seliges Leben"
          "seliges, seliges, seliges Leben,"
          "du, der du mir das selige Leben bringst."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Erleuchte den Himmel und die Erde,"
          "azurblaue himmlische Weite;"
          "erfreue heute meine Seele"
          "mit deinen Schwingungen ohne Unterlass."
          "Oh, gib mir dieses Leben und Frieden!"
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "Leben und Frieden, Leben und Frieden,"
          "und Frieden, und Frieden, Leben und Frieden,"
          "oh, gib mir dieses Leben und Frieden!"
        }
      }

    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold "3."
        \column {
          "Einzigartig bist du,"
          "die du alles mit Liebe erfüllst"
          "und alles Alte erneuerst;"
          "durch dich wird die Welt erneuert,"
          "du bist auf ewig heilige Liebe!"
        }
      }
   
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
        "Heilige Liebe, heilige Liebe,"
        "Liebe, Liebe, heilige Liebe,"
        "du bist auf ewig heilige Liebe."
        }
      }
      % adds vertical spacing between verses
    }\hspace #0.1
  }
}
