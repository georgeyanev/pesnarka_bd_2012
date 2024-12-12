\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Fir-fjur-fen" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {
   \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {


    \line {   "   "Fir-fjur-fen Tao Bi Au-men,}
    \line {   "   "Tao Bi Au-men, Tao Bi Au-men. }
    \line {   "   "Fir-fjur-fen Tao Bi Au-men.}
    \line {   "   "Fir-fjur-fen Tao Bi Aumen, }
    \line {   "   "Fir-fjur-fen Tao Bi Au-men.}
   
  

  }
 \override #`(baseline-skip . ,deCoupletBaselineSkip)
   \column {  \line {   "   "Lobpreise meine Seele den Herrn,}
    \line {   "   "lobpreise und vergiss nicht}
    \line {   "   "lobpreise, lobpreise, lobpreise }
    \line {  "   " und vergiß nicht.}
 }


}
