\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Gehe auf, du, meine Sonne" }
\markup \null
\markup \null
\markup \fontsize #+2.0 {
  
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line {   1. Geh auf, geh auf, du, meine Sonne, }

    \line {   "   "denn ich warte jeden Tag; }

    \line {   "   "nach dir sehnt sich mein Herz}

    \line {   "   "und auf meinem Weg bin ich ermüdet;}

    \line {   "   "Du bringst mir seliges Leben.}
    \line { " " }

    \line {   "   "   \italic { Refrain:}  }

    \line {   "   "  Seliges Leben, seliges Leben}

    \line {   "   "  seliges, seliges, seliges Leben,}

    \line {   "   " du, der du mir das selige Leben bringst.}

    \line { " " }

    \line {   2. Erleuchte den Himmel und die Erde,}

    \line {    "   "azurblaue himmlische Weite; }

    \line {   "   "erfreue heute meine Seele }

    \line {   "   "mit deinen Schwingungen ohne Unterlass.}

    \line {   "   "Oh, gib mir dieses Leben und Frieden!}

    \line { " " }
    \line {   "   "    \italic { Refrain:}  }

    \line {   "   "   Leben und Frieden, Leben und Frieden,}

    \line {   "   "  und Frieden, und Frieden, Leben und Frieden,}

    \line {   "   "   oh, gib mir dieses Leben und Frieden!}



  }

  \hspace #-4
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


    \line {3. Einzigartig bist du, }

    \line {   "   "   die du alles mit Liebe erfüllst }

    \line {   "   "und alles Alte erneuerst; }

    \line {   "   "durch dich wird die Welt erneuert,}

    \line {   "   "du bist auf ewig heilige Liebe!}

    \line { " " }
    \line {   "   "    \italic { Refrain:}  }

    \line {   "   "   Heilige Liebe, heilige Liebe,}

    \line {   "   "    Liebe, Liebe, heilige Liebe,}

    \line {   "   "    du bist auf ewig heilige Liebe.}
  }
}


%{
convert-ly (GNU LilyPond) 2.24.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.24.0
%}
