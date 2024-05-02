\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Der Brief" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #25
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { " "Wenn die Liebe herrscht, }
 \line { " " entsteht keine Unruhe. }

 \line { " "Wenn die Weisheit regiert, }
  \line { " "wird die Ordnung nicht gestört.}

 \line { " "Wenn die Wahrheit scheint, }
  \line { " "gedeiht und reift die Frucht. }

  }
}
