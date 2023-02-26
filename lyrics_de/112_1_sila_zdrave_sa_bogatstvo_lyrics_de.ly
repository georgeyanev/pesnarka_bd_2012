\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Kaft und Leben sind Reichtum" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {  Kraft und Gesundheit sind Reichtum,}
    \line {  Kraft und Gesundheit sind Reichtum,}
    \line {  Kraft und Gesundheit sind Reichtum,}
    \line { sind Reichtum, sind Reichtum,}
    \line {  Kraft und Gesundheit sind Reichtum,}
    \line { für das Leben der Seele, }
    \line { für das Leben der Seele. }



  }


}
