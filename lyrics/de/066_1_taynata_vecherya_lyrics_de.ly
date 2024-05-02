\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Das letzte Abendmahl" }
\markup \null
\markup \abs-fontsize #10 {
   \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {   "   "  Zun meri manu, }
    \line {   "   " zun meri manun dana, }
    \line {   "   " asavita vita nanda. }
    \line {   "   " Zun meri manu, }
    \line {   "   " zun meri manun dana, }

    \line {   "   " asavita nanda. }
    \vspace #0.5

    \line {   "   " Alles ist hell, }

    \line {   "   " alles ist durchlichtet }

    \line {   "   " mit meinem lebendigen Licht [videlina]. }

    \line {   "   " Zun meri manu, }

    \line {   "   " zun meri manundana, }

    \line {   "   " asavita nanda. }
  }
}
