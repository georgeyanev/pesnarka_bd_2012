\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Vorwärts, Kinder, vorwärts" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Vorwärts, Kinder, vorwärts,}
    \line { "   "bringt das Wort überall hin! }

    \line { "   "Ohne Angst im neuen Leben bringt}

    \line { "   "Gerechtigkeit, Frieden, Liebe!}


    \line { " " }
    \line { 2. Vom neuen Himmel aus}

    \line { "   "ruft uns heute der Erlöser.}

    \line { "   "Hört diesen Ruf, }

    \line { "   "bringt Gerechtigkeit, Frieden, Liebe!}


    \line { " " }
    \line { 3. Hier unten gibt es keinen Frieden, }

    \line { "   "Ungerechtigkeit ist weit und breit.}

    \line { "   "Verbreitet heute schnell }

    \line { "   "die gute Nachricht von Frieden und Gerechtigkeit!}

    \line { " " }
    \line { 4. Vorwärts, Kinder, vorwärts,}

    \line { "   "bringt das Wort überall hin! }

    \line { "   "Ohne Angst im neuen Leben bringt}

    \line { "   "Gerechtigkeit, Frieden, Liebe!}
  }
}
