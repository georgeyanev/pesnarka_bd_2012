
\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Hymne der Sonne" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ich wecke. Es geht auf meine Sonne in meiner Seele."
          "Es sei gepriesen der Name Gottes."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Du weckst. Sie geht auf die göttliche Sonne in mir, im Herzen."
          "Das Reich Gottes komme."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Er weckt. Es geht auf die Sonne meines Geistes."
          "Es geschehe der Wille Gottes."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Wir wecken. Es geht auf die Sonne unserer Engel."
          "Es komme das Reich unseres Vaters der Lichter!"
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Ihr weckt. Die Sonne des großen Herrn"
          "des Friedens geht auf in unseren Seelen."
          "Damit sie erneuere unsere Seele durch Seine Kraft."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Sie wecken. Sie geht auf die Sonne aller Sonnen unseres Geistes."
          "Gott gebe uns Leben, Gesundheit und Freiheit!"
        }
      }
    }\hspace #0.1
  }
}
