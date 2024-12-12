\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das letzte Abendmahl" }
\markup \null
\markup \abs-fontsize #11 {
  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

    \column {
      \line {   1. Zun meri manu, }
      \line {   "   " zun meri manun dana, }
      \line {   "   " asavita vita nanda. }
      \line {   "   " Zun meri manu, }
      \line {   "   " zun meri manun dana, }

      \line {   "   " asavita nanda. }
      \vspace #0.5

      \line {   2.  Alles ist hell, }

      \line {   "   " alles ist durchlichtet }

      \line {   "   " mit meinem lebendigen Licht [videlina]. }

      \line {   "   " Zun meri manu, }

      \line {   "   " zun meri manundana, }

      \line {   "   " asavita nanda. }
    }
  }
}
