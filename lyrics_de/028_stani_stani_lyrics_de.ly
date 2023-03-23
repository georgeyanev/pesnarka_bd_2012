\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Stehe auf, stehe auf" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { 1. Steh auf, steh auf }
    \line {   "   " und der Herr wird dich beleben; }
    \line {   "   " steh auf, steh auf}
    \line {   "   " und der Herr wird dich auferstehen lassen; }
    \line {   "   " steh auf, steh auf  }
    \line {   "   "und beginne mit Liebe;}
    \line {   "   "stehe auf, stehe auf }
    \line {   "   "und kleide dich in Wahrheit.}

    \line {   "   " }
    \line {  2. Kleide dich in Wahrheit}
    \line {   "   "und erbaue immer mit ihr,}
    \line {   "   "sie wird dich sogar erneuern}
    \line {   "   "und mit Geist dich erleuchten.}
    \line { " " }


  }
}












%---------------------------------------------------------------------
