\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Herzens" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1

    \column {
      \line {
        \bold "1."
        \column {
          "Vor Dir, Herr, werfen wir uns heute nieder,"
          "mit reinen, bebenden Seelen."
          "In diesem Lied schütten wir unsere Herzen aus"
          "und flehen Dich an: Hochheiliger, verzeih!"
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Vergiss unsere Sünden,"
          "segne uns reichlich."
          "Allgütiger König der lichten Seelen,"
          "empfange uns in Deinem Reich!"
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Dort werden wir dich preisen in Ewigkeit,"
          "einzig Dir gebührt Lobpreisung."
          "Umgrenze uns mit Deiner Barmherzigkeit,"
          "erleuchte uns mit Deinem Licht."
        }
      }
    }\hspace #0.1
  }
}
