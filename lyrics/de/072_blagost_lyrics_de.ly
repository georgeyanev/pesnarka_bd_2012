\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Güte" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Güte, Güte, Güte,"
          "bringt, bringt, bringt"
          "das Licht, das Licht, das Licht."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          "Freude bringt sie für das Leben,"
          "Freude bringt sie für das Leben,"
          "Freude bringt sie für das Leben,"
          "für das Leben, für das Leben, für das Leben."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Sie lässt Alt und Jung sich erheben,"
          "sie lässt Alt und Jung sich erheben,"
          "sie lässt Alt und Jung sich erheben,"
          "aus dem Bett, aus dem Bett, aus dem Bett."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Kranke liebkost sie, Gesunde erfreut sie,"
          "Kranke liebkost sie, Gesunde erfreut sie,"
          "Kranke liebkost sie, Gesunde erfreut sie,"
          "wenn sie kommt,"
          "wenn sie kommt,"
          "wenn sie kommt."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Und die Flüsse strömen reichlich"
          "und die Blumen blühen schön,"
          "wenn sie kommt,"
          "wenn sie kommt,"
          "wenn sie kommt."
        }
      }
    }\hspace #0.1
  }
}
