\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Habe Glauben" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { " " Habe Glauben, Glauben,}
    \line { " " Habe Glauben, Glauben,}
    \line { " " Habe Glauben, Glauben,}
    \line { " " Habe Glauben, Glauben, Glauben. }
    \line { " " Habe Glauben, Glauben, Glauben. }


  }

    }
}
