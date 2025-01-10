\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lasst uns kühn vorwärts gehen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
        \line {
          \bold "1."
          \column {
          "Vorwärts, lasst uns kühn vorangehen"
          "in die stillen Paläste des geheimen Wissens,"
          "erfüllt von Leben und Kraft."
        }
      }
           \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
        "Wie ein Sturmwind über den Wäldern,"
        "mit feurigem Atem in der Brust,"
        "vorwärts, schwingen wir uns auf,"
        "erneuern wir die Welt!"
                } 
                }
      
      \vspace #1
       \line {
        \bold "2."
        \column {
        "Lasst uns die Erde" 
        "mit reinen Gedanken fest umzäunen"
        "und das lasterhafte Böse"
        "mit Recht besiegen."
        }
        }

       \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
        \vspace #0.5
      \line {
        \bold "3."
        \column {
        "Lasst uns den Schwachen"
        "Stärkung und Erneuerung bringen,"
        "den Leidenden Erbarmen"
        "und die neue Freiheit."}
        }

       \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "4."
        \column {
       "Lasst uns in den Abgrund steigen,"
        "das Banner aufpflanzen"
        "und die gefallenen Brüder"
        "von der Qual erlösen."
              }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

     \vspace #0.5
      \line {
        \bold "5."
        \column {
        "Dann lasst uns die Tore"
        "der neuen Stadt öffnen,"
        "lasst uns eintreten in Jerusalem  –"
        "die Welt der Lichter."

               }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

    }\hspace #0.1
  }
}

