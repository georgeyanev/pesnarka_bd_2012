\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lobpreise" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { 1. Lobpreise den Herrn, meine Seele, }
    \line {   "   " vergiss nicht all Seine Gnade, }
    \line {   "   " vergiss nicht all Seine Güte,}
    \line {   "   " vergiss nicht all Seine Wohltaten! }
    \line {   "   " Vergiss nicht Seine Gnade, }
    \line {   "   " vergiss nicht Seine Güte, }
    \line {   "   "vergiss nicht Seine Liebe [obič], }
    \line {   "   " vergiss nicht Seine Liebe [Ljubov]!  }
  }
  }
}
