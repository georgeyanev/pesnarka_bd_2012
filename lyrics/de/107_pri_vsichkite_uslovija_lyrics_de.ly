\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Unter allen Bedingungen" }

\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {  
    \line { " "Unter allen Bedingungen des Lebens }

    \line { " "verliere nicht deinen Frieden, deinen Frieden!}

    \line { " "Das Leben ist schön, wenn der Mensch mutig ist.}
    \line { " "Das Leben ist schön, wenn der Mensch mutig ist.}



  }


}
