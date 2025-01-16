\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Vorwärts, Kinder, vorwärts!" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
  
    \column {
      \line {
        \bold "1."
        \column {
          "Vorwärts, Kinder, vorwärts,"
          "bringt das Wort überall hin!"
          "Ohne Angst im neuen Leben"
          "bringt Gerechtigkeit,"
          "Frieden, Liebe!"
        }
      }

      \vspace #1
      \line {
        \bold "2."
        \column {
          "Vom neuen Himmel aus"
          "ruft uns heute der Erlöser."
          "Hört diesen Ruf,"
          "bringt Gerechtigkeit, Frieden, Liebe!"
        }
      }
    }

    % adds horizontal spacing between columns
    \column {
      % adds vertical spacing between verses
      \line {
        \bold "3."
        \column {
          "Hier unten gibt es keinen Frieden,"
          "Ungerechtigkeit ist weit und breit."
          "Verbreitet heute schnell"
          "die gute Nachricht von Frieden"
          "und Gerechtigkeit!"
        }
      }
      \vspace #1

      \line {
        \bold "4."
        \column {
          "Vorwärts, Kinder, vorwärts,"
          "bringt das Wort überall hin!"
          "Ohne Angst im neuen Leben bringt"
          "Gerechtigkeit, Frieden, Liebe!"
        }
      }
    }
  }
}






