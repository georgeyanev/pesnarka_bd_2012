\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Weizenkorn" }
\markup \null
\markup \null
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ich war ein Weizenkorn, vergraben in der Erde."
          "Im tiefen Schlaf kannte ich das Leben nicht."
          "Aber ein Sonnenstrahl kam, das Licht erreichte mich"
          "und weckte mich mit seinem Ruf."
        }
      }
      \vspace #1

      \line {
        \bold "  "
        \column {
          "Vom Weizenkorn bin ich zum kleinen Vöglein geworden,"
          "damit ich in die Lüfte fliege."
        }
      }
      \vspace #1

      \line {
        \bold "  "
        \column {
          "Heute habe ich mich, gut gekleidet, zum ersten Mal"
          "auf einem Rebstock niedergelassen"
          "und zum ersten Mal von den süßen Weintrauben gekostet."
        }
      }
      \vspace #1

      \line {
        \bold "  "
        \column {
          "Wie schön ist das Leben, sagte ich mir dann."
        }
      }
      \vspace #1
    }\hspace #0.1
  }
}
