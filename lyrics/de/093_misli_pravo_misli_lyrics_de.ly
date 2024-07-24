\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Denke, denke recht" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {

   \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " " Denke, denke recht! }
    \line { " " Denke, denke recht! }
    \line { " " Hege heilige Gedanken für das Leben!}
    \line { " " Hege heilige Gedanken für das Leben!}
    \line { " " Hege, hege, hege, hege heilige Gedanken für das Leben!}


  }


}
