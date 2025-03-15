\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Frühe Stunde" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Es ist frühe Stunde,"
          "alles singt, alles schwingt."
          "Die Sonne scheint,"
          "die Seele erfreut sich an der Welt,"
          "um der großen Liebe willen."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Singe Herz, vergiss das Leid"
          "und die menschlichen Stürme"
          "in dieser wunderbaren Stunde."
          "Höre meine Stimme!"
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Großes Leben wird"
          "in schwerem Leid geboren."
          "(*Das große Leben wird"
          "nur in schwerem Leid geboren.)"
          "Stille Freude, neues Leben"
          "bringt dieser Sturm der Welt."
        }
      }
       \vspace #1
      \line {
        \bold "  "
        \column {
       "Neues Leben der Liebe"
          "wärme meine Seele!"
          "Freiheit, ein starker Geist"
          "und Frieden wird dein Eigen sein!"
          "Höre meine Stimme!"
          "Leise Töne rufen dich,"
          "ewige Liebe herrscht dort!"
        }
      }
    }\hspace #0.1
  }
}
