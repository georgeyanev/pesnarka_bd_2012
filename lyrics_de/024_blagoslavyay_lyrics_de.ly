\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Segne" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { 1. Segne den Herrn, meine Seele, }
    \line {   "   " vergiss nicht all Seine Gnade, }
    \line {   "   " vergiss nicht all Seine Güte,}
    \line {   "   " vergiss nicht all Seinen Wohltaten! }
    \line {   "   " Vergiss nicht seine Gnade, }
    \line {"   " vergiss nicht Seine Güte, }
    \line {   "   "vergiss nicht Seine Liebe [obich], }
    \line {   "   " vergiss nicht Seine Liebe [ljubov]!  }

  }
}
