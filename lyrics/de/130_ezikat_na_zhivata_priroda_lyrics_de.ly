
\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sprache der lebendigen Natur" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Furchtbar war der Wind,"

          "der den Wald durchschüttelte."

          "Furchtbar und stark war er."

          "Alle Blätter raschelten,"

          "sie raschelten und beteten:"

          "„Höre auf, Wind, höre auf Wind,"

          "freier Frühlingswind."
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {

          "Hast du kein Mitleid mit uns?"

          "Höre auf, wehe nicht!"

          "Erst in diesem Jahr"

          "kamen wir hier zu Besuch."

          "Wehe nicht, oh Wind,"

          "wir werden herunterfallen."

          "Unsere Rippen werden brechen.“"
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {
          "„Hier seid ihr kleine Blättchen,"

          "ich hörte von ferne von euch"

          "und kam, euch zu sehen,"

          "mit euch zu spielen"

          "und euch zu umwehen."
        }
      }
    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold " "
        \column {

          "Dann hört mein Lied:"

          "Nach mir kommt mein treuer Freund,"

          "der Nieselregen."

          "Er wird den Acker gießen,"

          "und ihn für Spiele vorbereiten."

          "Damit kein Staub aufsteigt, ihr Blätter,"

          "bei diesen fröhlichen Spielen."
        }
      }

      \vspace #1

      \line {
        \bold " "
        \column {

          "Von oben wird die Sonne "

          " beginnen zu scheinen,"

          "und uns bescheinen und wärmen,"

          "damit wir dann tanzen,"

          "damit wir essen,"

          "damit wir reines Wasser trinken"

          "und in Freude auseinandergehen."

          "Auf dass wir uns wieder treffen"

          "und gut mit Liebe verstehen.“"
        }
      }
    }\hspace #0.1
  }
}
