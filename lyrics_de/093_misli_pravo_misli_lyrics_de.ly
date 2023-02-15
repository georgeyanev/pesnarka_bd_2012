\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Denke! Denke gerade" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Denke! Denke gerade! }
    \line { " " Hege heilige Gedanken für das Leben!}
    \line { " " Hege heilige Gedanken für das Leben!}


  }


}
