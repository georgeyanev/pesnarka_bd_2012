\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Habe Glauben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }
      \line { " " Habe Glaube, Glaube,}

   \line { " "Habe Glaube, Glaube,}

   \line { " "Habe Glaube, Glaube,}

   \line { " "Habe Glaube, Glaube, Glaube. (2) }


    }


}
