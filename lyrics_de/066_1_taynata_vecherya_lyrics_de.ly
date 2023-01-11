\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Das letzte Abendmahl" }
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { 1.  Zun meri manu, }
    \line {   "   " zun meri manun dana, }
    \line {   "   " asavita vita nanda. }
    \line {   "   " Zun meri manu, }
    \line {   "   " zun meri manun dana, }

    \line {   "   " asavita nanda. }

    \line {   "   " Alles ist hell, }

    \line {   "   " alles ist durchlichtet }

    \line {   "   " von meinen lebendigem Licht (videlina). }

    \line {   "   " Zun meri manu, }

    \line {   "   " zun meri manundana, }

    \line {   "   " asavita nanda. }
  }
}
