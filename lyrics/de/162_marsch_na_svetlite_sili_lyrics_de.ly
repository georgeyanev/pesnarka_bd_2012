\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Marsch der lichten Mächte II" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Geister des Lichtes schreiten leicht in der Stille."
          "Sie steigen in weißen Reihen von den hohen Regionen herab."
          "Sie kommen auf die Erde in die Herzen der Menschen."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Und es werden geboren lichte, neue Ideen,"
          "wie wir die schweren Ketten"
          "sinnloser, jahrhundertealter Feindschaften ablegen"
          "und in Frieden leben."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Und jeder wird mit Freude auf dem göttlichen Acker arbeiten,"
          "es wird ewige Jugend herrschen; niemand wird sterben."
          "In Frieden und Liebe werden wir alle gemeinsam leben"
          "und Gott mit Liedern lobpreisen."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Neue Lieder werden wir singen von der kosmischen Harmonie,"
          "Ein neues Leben werden wir leben; unser Körper wird leuchten"
          "und am Ende werden wir im Äther fliegen als Geister des Lichtes."
        }
      }
    }\hspace #0.1
  }
}