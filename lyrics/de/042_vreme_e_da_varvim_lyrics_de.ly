\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Es ist Zeit, dass wir gehen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {

      \line {
        \bold "1." \column {
          "Es ist Zeit, dass wir gehen,"
          "dass wir das Böse besiegen,"
          "dass wir den Frieden wiederherstellen,"
          "dass wir Christus zum König machen!"
          "Gerechtigkeit werden wir einführen,"
          "Freiheit werden wir geben,"
          "und an allen Tagen"
          "werden wir treu sein."
        }
      }
      \vspace #1

      \line { \italic"    Refrain:"}

      \line {
        "   " \column {
          "Möge die Liebe herrschen,"
          "möge die Güte herrschen!"
          "Gott ist der König der Welt;"
          "Er ist das Licht auf unserem Weg."
        }
      }
      \vspace #1
      \line {
        \bold "2." \column {
          "Schnell, lasst uns losfliegen,"
          "mächtig posaunen,"
          "lasst uns die Freude verkünden,"
          "den Glauben wiederbeleben!"
          "Die Welt wird wieder erstrahlen"
          "in der ersten Schönheit,"
          "Freiheit, Frieden und Ordnung"
          "werden überall walten!"
        }
      }
      \vspace #1
      \line { \italic"   Refrain ..."}
    }
    \hspace #0.1
  }
}
