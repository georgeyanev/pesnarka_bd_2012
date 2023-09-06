\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Habe Glauben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #19
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Habe Glauben, Glauben,}
    \line { " " Habe Glauben, Glauben,}

    \line { " " Habe Glauben, Glauben,}

    \line { " " Habe Glauben, Glauben, Glauben. }
    \line { " " Habe Glauben, Glauben, Glauben. }


  }


}
