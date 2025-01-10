\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Es lärmt" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
        \line {
          \bold "1."
          \column {
            "    Es lärmt, ich höre"
            "    ich höre"
            "    die ganze Welt lärmen!"
            "Die Herzen der Menschen lärmen"
            "zwischen ihren Idolen und Fehlern;"
            "die Gehirne lärmen unaufhörlich."
            "Es ist eine große Flut in den Häusern."
            "    Es lärmt, ich höre"
            "    die ganze Welt lärmen!"
          }
        }

        \vspace #1
        \line {
          \bold "2."
          \column {
            "    Und der Wind weht,"
            "    wohin er will."
            "Die Blätter des Waldes antworten auf seinen Ruf; "
            "sie wiederholen ihr Lieblingsliedchen,"
            "spielerisch wie ein tanzendes Mädchen."
            "    Und der Wind weht,"
            "    wohin er will."
          }
        }

        \vspace #1
        \line {
          \bold "3."
          \column {
            "    Oh, mein Wind,"
            "    wehe nun stark!"
            "Bringe die göttliche Feuchtigkeit"
            "und die belebende Frische,"
            "reinige die stickigen Hütten"
            "und zerstreue die schweren irdischen Sorgen!"
            "    Oh, mein Wind,"
            "    wehe nun stark!"
          }
        }

        \vspace #1
        \line {
          \bold "4."
          \column {
            "    Wehe, Wind,"
            "    muntere die Welt auf!"
            "Bei reinen Gedanken, zarten Gefühlen"
            "erblühen die göttlichen Künste;"
            "möge überall Freude erstrahlen"
            "und möge [man] überall frische Jugend atmen!"
            "    Wehe, Wind,"
            "    kläre die Welt!"
          }
        }
    }\hspace #0.1
    }
  }

