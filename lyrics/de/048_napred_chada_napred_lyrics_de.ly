\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Vorwärts, Kinder, vorwärts" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {

  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Vorwärts, Kinder, vorwärts,}
    \line { "   "bringt das Wort überall hin! }

    \line { "   "Ohne Angst im neuen Leben bringt}

    \line { "   "Gerechtigkeit, Frieden, Liebe!}


    \vspace #0.5
    \line { 2. Vom neuen Himmel aus}

    \line { "   "ruft uns heute der Erlöser.}

    \line { "   "Hört diesen Ruf, }

    \line { "   "bringt Gerechtigkeit, Frieden, Liebe!}



  }
  \hspace #1
  \override #`(baseline-skip . ,deCoupletBaselineSkip)


  \column {
    \line { 3. Hier unten gibt es keinen Frieden, }

    \line { "   "Ungerechtigkeit ist weit und breit.}

    \line { "   "Verbreitet heute schnell }

    \line { "   "die gute Nachricht von Frieden}
    \line { "   " und Gerechtigkeit!}

  \vspace #0.5
    \line { 4. Vorwärts, Kinder, vorwärts,}

    \line { "   "bringt das Wort überall hin! }

    \line { "   "Ohne Angst im neuen Leben bringt}

    \line { "   "Gerechtigkeit, Frieden, Liebe!}
  }
}
