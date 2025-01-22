\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Nach Zion" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    
    \column {
      \line {
        \bold "1."
        \column {
          "Mit Adlerschwingen,"
          "unser geliebtes Zion,"
          "fliegen wir heute zielstrebig"
          "gemeinsam zu dir."
        }
      }
      \vspace #1
     
      \line {
        \bold "   "
        \column {
          "   Der Tod erschreckt uns nicht mehr,"
          "   in uns lebt heiliger Geist,"
          "   gleichermaßen erfreuen uns"
          "   das Diesseits und das Jenseits."
        }
      }
      \vspace #1
    }
    \column {
     
      \line {
        \bold "2."
        \column {
          "Über das Fleisch werden wir siegen"
          "mit Mut und mit neuer Heldentat,"
          "die Herzen werden wir zum Schmelzen"
          "bringen mit der Liebe Christi."
        }
      }
      \vspace #1
      \line {
        \bold "   "
         \column {
           "   Erstrahle, heiliges Zion,"
           "   schnell fliegen wir schon."
           "   Vor dem Gott in dir werden wir"
           "   uns bald mit Geist verneigen."
         }
      }
    }
  }
}

