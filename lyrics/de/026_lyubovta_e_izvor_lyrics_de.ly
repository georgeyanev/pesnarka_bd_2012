\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Liebe ist eine Quelle" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
       \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Die Liebe ist eine Quelle,"
          "sie gebiert das Leben"
          "und eine allheilige Pflicht"
          "sät sie in ihm sanft:"
          "auf dass es immer voranschreitet"
          "im Streben nach dem Guten,"
          "das vollkommen ist oben im Himmel."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      \line {
        \bold "   "
        \column {
          "Arbeite mit ihr,"
          "in der gewünschten Barmherzigkeit,"
          "und bringe ihre Hilfe"
          "für die leidenden Seelen."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Dies vollbringt sie selbst unaufhörlich"
          "wie eine zärtliche Mutter"
          "in jedermanns Seele – sie sät immerdar"
          "die lieben Samenkörnchen, aus denen"
          "die gütigen Wohltaten sprießen."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic "  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "3."
        \column {
          "Dieses große Geheimnis, wer es gut versteht,"
          "öffnet am Morgen seine liebe Seele "
          "wie die weiße Lilie im himmlischen Tau"
          "und im wunderbaren Sonnenlicht."
        }
      }

    }

    % adds horizontal spacing between columns
    \column {
      % adds vertical spacing between verses
      \line {
        \bold " "
        \column {
          \italic "  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "4."
        \column {
          "Die Sonne, die den Menschen"
          "zur rechten Zeit belebt, "
          "scheint warm, erweckt "
          "und lässt gedeihen"
          "in ihm die Samenkörnchen"
          "und füllt geheimnisvoll"
          "mit Tugenden seine Seele."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic "  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "5."
        \column {
          "Die so süßen Früchte, "
          "in der Liebe gereift:"
          "Am seligsten wird der sein,"
          "der sie kostet."
          "In himmlischen Wohnstätten "
          "wird er ewig leben,"
          "vor dem Thron Gottes"
          "wird er Lieder singen."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic "  Refrain ..."
        }
      }
    }   \hspace #0.1
  }
}





