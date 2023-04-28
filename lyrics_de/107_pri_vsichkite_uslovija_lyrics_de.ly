\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Unter allen Bedingungen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Unter allen Bedingungen des Lebens }

    \line { " "verliere nicht deinen Frieden, deinen Frieden!}
    \line { " "}

    \line { " "Das Leben ist schön, wenn der Mensch mutig ist.}
    \line { " "Das Leben ist schön, wenn der Mensch mutig ist.}



  }


}
