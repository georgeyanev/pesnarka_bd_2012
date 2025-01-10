\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Lobpreise" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
  \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {
      \bold "  "
      \column {
       "Lobpreise den Herrn, meine Seele,"
       "vergiss nicht all Seine Gnade,"
       "vergiss nicht all Seine Güte,"
       "vergiss nicht all Seine Wohltaten!"
       "Vergiss nicht Seine Gnade,"
       "vergiss nicht Seine Güte,"
       "vergiss nicht Seine Liebe [obič],"
       "vergiss nicht Seine Liebe [Ljubov]!"
      }
    }
  }
  }
}
