\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize " Ich bin das weiße Schneeglöckchen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1

  \column {
    \line { \bold "1." \column {
        "Ich bin das weiße Schneeglöckchen"
        "inmitten der Gräser des Waldes,"
        "schüchtern wie ein junges Mädchen"
        "unter den Blicken der Menschen."
        "  Die böse Stiefmutter hat mich geweckt,"
        "  mit dem Schnee und mit dem Wind."
        "  Alles Lebendige wundert sich,"
        "  dass ich eine frühe Blume bin."
      }
    }

     \vspace #1
     \line { \bold "2." \column {
         "Neue Freude zeige ich euch"
         "mit einem früh erwachten Glöckchen,"
         "und erzähle über den Frühling"
         "ein wunderbares Märchen,"
         "  Dass nach mir das Veilchen"
         "  bei euch Gast sein wird,"
         "  und dass man mit dieser lieben Freundin"
         "  die Nachtigall hören wird."
       }
     }
     \vspace #1
     \line { \bold "3." \column {
         "Dass Lämmer blöken werden"
         "auf grünen Weiden,"
         "die Bauern werden"
         "die gedüngten Felder säen."
         "  Goldene Ähren werden reifen,"
         "  auf diesen wunderbaren Feldern."
         "  Engel werden Gott lobpreisen"
         "  mit den allerschönsten Liedern."
       }
     }
  } \hspace #0.1
   }
}
