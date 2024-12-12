\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Kaft und Leben sind Reichtum" }

\markup \null
\markup \null
\markup \abs-fontsize #11 {
     \fill-line {
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


}
