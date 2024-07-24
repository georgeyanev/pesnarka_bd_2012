\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Stehe auf, stehe auf" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
    \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line {   "   " Steh auf, steh auf }
    \line {   "   " und der Herr wird dich beleben; }
    \line {   "   " steh auf, steh auf}
    \line {   "   " und der Herr wird dich }
    \line {   "   " auferstehen lassen; }
    \line {   "   " steh auf, steh auf  }
    \line {   "   "und beginne mit Liebe;}
    \line {   "   "stehe auf, stehe auf }
    \line {   "   "und kleide dich in Wahrheit.}
  }
  \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column { 
    \line {  "   " Kleide dich in Wahrheit}
    \line {   "   "und erbaue immer mit ihr,}
    \line {   "   "sie wird dich sogar erneuern}
    \line {   "   "und mit Geist dich erleuchten.}
    }
}












%---------------------------------------------------------------------
