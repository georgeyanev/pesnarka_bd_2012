\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der feierliche Tag bricht schon an" }
\markup \null
\markup \null


\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Der feierliche Tag bricht schon an,"
          "der vorherbestimmte göttliche Tag,"
          "ein Diadem der Tage,"
          "mit seinem großen Licht."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      \line {
        "   "
        \column {
          "Kommt, auf dass wir"
          "in der wunderbaren Liebe leben."
          "Kommt, auf dass wir"
          "diesen himmlischen Segen empfangen,"
          "welcher das Leben erneuert"
          "und es ewig verjüngt."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Und er bringt Freude für die Seele"
          "und verkündet die Freiheit"
          "und den Frieden mit allheiliger Liebe"
          "für alle auf der Erde."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \vspace #0.5
      \line {
        \bold "3."
        \column {
          "Oh, wunderschöner Tag, ewiges Wohl,"
          "wem ist das nicht wertvoll?"
          "Für all die Jahre"
          "erneuere uns bald!"
        }
      }
        \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
    }\hspace #0.1
  }
}
  






