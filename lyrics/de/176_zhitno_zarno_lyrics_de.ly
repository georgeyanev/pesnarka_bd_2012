\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Weizenkorn" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
\fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

\column {

 \line { "   "Ich war ein Weizenkorn, vergraben in der Erde.}

 \line { "   "Im tiefen Schlaf kannte ich das Leben nicht.}

 \line { "   "Aber ein Sonnenstrahl kam, das Licht erreichte mich}

 \line { "   "und weckte mich mit seinem Ruf. }
\vspace #0.5

 \line { "   "Vom Weizenkorn bin ich zum kleinen Vöglein geworden,}

 \line { "   "damit ich in die Lüfte fliege. }

 \line { "   "Heute habe ich mich, gut gekleidet, zum ersten Mal}

 \line { "   "auf einem Rebstock niedergelassen }

 \line { "   "und zum ersten Mal von den süßen Weintrauben gekostet.}
\vspace #0.5

 \line { "   "Wie schön ist das Leben, sagte ich mir dann. }

}
  }
}
