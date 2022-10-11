\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Kaft und Leben sind ein Reichtum" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }
      \line {  Kraft und Gesundheit sind ein Reichtum}
             \line { für das Leben der Seele. }



    }


}
