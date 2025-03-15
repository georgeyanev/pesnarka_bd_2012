\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Gebirges" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Und ich hüpfe wie ein Vöglein von Ast zu Ast,"
          "so dass sich jeder wundert,"
          "wenn er mich sieht."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Ich stimme ein wunderbares Lied über die Sonne an,"
          "klare kleine Quellen beginnen zu murmeln."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Und ich sehe einen steilen Gipfel vor mir:"
          "Er ruft mich leise dort hinauf."
        }
      }
    }\hspace #0.1
  }
}
