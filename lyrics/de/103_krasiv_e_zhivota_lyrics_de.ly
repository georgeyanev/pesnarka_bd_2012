\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Schön ist das Leben" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Schön ist das Leben unserer Seele, das die ganze Erde erfüllt."
          "Schön ist das Leben unserer Seele, das die ganze Erde erfüllt."
          "Schön ist das Leben unserer Seele, das die ganze Erde erfüllt,"
          "das die ganze Erde erfüllt."
        }
      }
    }\hspace #0.1
  }
}