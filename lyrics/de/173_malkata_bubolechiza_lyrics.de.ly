\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das kleine Käferchen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Mich hat Gott geboren"
          "und mich mit einem neuen Leben erleuchtet."
          "Langsam, langsam gedeiht und reift meine Seele,"
          "aber sieh schon:"
          "Ich laufe aufwärts, wo die Sonne funkelt."
          "Ich werde das sehen,"
          "was meine Seele liebt"
          "und wonach sie trachtet."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "So flüstert das Käferchen,"
          "und strebt auf dem Weg nach oben,"
          "und nacheinander überwindet es die Hürden."
          "Tapfer durchquert es Felsen,"
          "Felder und Täler,"
          "und strebt immer vorwärts"
          "und steigt hinauf bis zum Gipfel."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "So vergehen unzählige Jahrhunderte"
          "und die Zeit verändert sich."
          "Und so wuchs es: jungfräulich,"
          "reiner Tau, eine schöne Seele,"
          "Schöpfung Gottes –"
          "sie ergießt Frieden und lichte Freude in die Welt."
        }
      }
    }\hspace #0.1
  }
}
