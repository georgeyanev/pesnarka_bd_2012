\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Der Brief" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { " "Wenn die Liebe herrscht, }

 \line { " "entsteht keine Unruhe. }

 \line { " "Wenn die Weisheit regiert, }

 \line { " "wird die Ordnung nicht gestört.}

 \line { " "Wenn die Wahrheit scheint, }

 \line { " "gedeiht und reift die Frucht. }

  }
}
