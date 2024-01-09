\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Lobpreise" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { 1. Lobpreise den Herrn, meine Seele, }
    \line {   "   " vergiss nicht all Seine Gnade, }
    \line {   "   " vergiss nicht all Seine Güte,}
    \line {   "   " vergiss nicht all Seine Wohltaten! }
    \line {   "   " Vergiss nicht Seine Gnade, }
    \line {   "   " vergiss nicht Seine Güte, }
    \line {   "   "vergiss nicht Seine Liebe [Ljubov], }
    \line {   "   " vergiss nicht Seine Liebe [Obič]!  }

  }
}
