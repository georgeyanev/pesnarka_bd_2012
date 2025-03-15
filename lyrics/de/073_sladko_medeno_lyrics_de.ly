 \version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Süß, honigsüß" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Süß, honigsüß, süß, honigsüß, süß, honigsüß, süß, honigsüß," 
          "honigsüß, honigsüß, süß honigsüß." 
          "Von der Sonne gesandt, von den Bienen überbracht." 
        }
      }
      
    }\hspace #0.1
  }
}

