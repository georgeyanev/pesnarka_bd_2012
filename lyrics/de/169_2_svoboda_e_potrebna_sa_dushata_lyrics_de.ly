\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Freiheit bedarf die Seele." }

\markup \null
\markup \null
\markup \abs-fontsize #11 {
   \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { Der Freiheit bedarf die Seele. }
  \line { Der Freiheit bedarf die Seele, die Seele, die Seele. }
   \line { Sie befindet sich nur in der Liebe. }
   \line { Das ist nur für die Seele }
  }
  }
}
