\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Unter allen Bedingungen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }
\line { " "Unter allen Bedingungen des Lebens }

\line { " "verliere deinen Frieden, deinen Frieden nicht!}

\line { " "Schön ist das Leben, }

\line { " "wenn der Mensch mutig ist.}



    }


}
