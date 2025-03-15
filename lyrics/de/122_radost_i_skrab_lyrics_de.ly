\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Freude und Gram" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ich habe über dich, Gram, gehört,"
          "dass du grausam wärst,"
          "dass du Leid zufügst."
          "Weißt du nicht,"
          "dass ich ein armer Fremder bin?"
          "Sage mir, was du von mir willst,"
          "sage es mir!"
          "Sage mir, was du von mir willst,"
          "ich muss es wissen!"
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "„Schwerlich kann mich"
          "jemand lieben."
          "Dort ist der Gram!"
          "Wer mich liebt [običam]"
          "und mich gut empfängt,"
          "nur der kann das Leben verstehen."
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "Schwierig und steil ist der Weg,"
          "auf dem ich gehe."
          "Schwerlich kann mir dort jemand folgen"
          "und für den Sterblichen"
          "ist das fast unmöglich."
        }
      }
    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold " "
        \column {
          "Liebt mich jedoch jemand und"
          "denkt gut über mich,"
          "wird er ein Bürger aus einer"
          "vollkommen anderen Welt sein.“"
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "Freude und Gram, das sind Wege,"
          "das große Leben zu verstehen."
          "Die Liebe schätzt sie beide gleichermaßen."
          "Gram und Freude: es ist gleich,"
          "Gram und Freude: es ist gleich,"
          "wenn Liebe in ihnen herrscht."
          "Die Gerechtigkeit wird im Gram geschätzt"
          "und das Gute in der Freude."
          "Empfangen wir sie"
          "und gehen gemeinsam vorwärts."
          "Die Liebe schätzt sie beide gleichermaßen."
        }
      }
    }\hspace #0.1
  }
}

