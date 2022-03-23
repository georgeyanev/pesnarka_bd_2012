\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Denke! Denke gerade" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }
      \line { " " Denke! Denke gerade! }

 \line { " " Stütze heilige Gedanken für das Leben!}
 \line { " " Stütze heilige Gedanken für das Leben!}


    }


}