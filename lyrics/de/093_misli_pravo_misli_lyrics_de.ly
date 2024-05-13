\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Denke, denke gerade" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {

   \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " " Denke, denke gerade! }
    \line { " " Denke, denke gerade! }
    \line { " " Hege heilige Gedanken für das Leben!}
    \line { " " Hege heilige Gedanken für das Leben!}
    \line { " " Hege, hege, hege, hege heilige Gedanken für das Leben!}


  }


}
