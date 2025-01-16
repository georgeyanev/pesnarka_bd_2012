\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Was ist das Wesen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
  \override #`(baseline-skip . ,bgCoupletBaselineSkip)
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "In meinem Verstand klopft ein Gedanke;"
          "Täglich fragt er mich:"
          "Was ist im Leben real,"
          "was ist das Wesen?"
          "Mein Geist flüstert mir zu:"
        }
      }
      \vspace #1
      \line {
         \bold "1."
        \column {
          "Die Sonne, die scheint,"
          "der Vogel, der singt,"
          "alles, was lebt,"
          "leidet und sich sehnt,"
          "drückt das Wesen aus."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Gehe zu den Blumen,  auf das Feld,"
          "in den Wald; schau die Schönheit an,"
          "atme den Duft ein,"
          "dort schaust du das Wesen an."
        }
      }
      \vspace #1
    }
    \hspace #0.1
    \column {
      \line {
        \bold "3."
        \column {
          "Schau den Himmel an, frag das Herz:"
          "In dieser wunderbaren Schönheit"
          "und kosmischen Weisheit,"
          "schaust du nicht das Wesen?"
        }
      }
      \vspace #1
      \line {
        \bold "4."
        \column {
          "Wenn sich die zärtliche Mutter"
          "für das Kind aufopfert,"
          "in dieser beispielhaften Liebe [obič],"
          "und grenzenlosen Liebe [Ljubov],"
          "schaust du nicht das Wesen an?"
        }
      }
       \vspace #1
       \line {
        \bold "  "
        \column {
          "Schönheit, Wahrheit, Liebe [Ljubov]"
          "und Weisheit, das ist der Herr auf"
          "Erden, das ist das Wesen."
        }
      }
    }
    \hspace #0.1
  }
}