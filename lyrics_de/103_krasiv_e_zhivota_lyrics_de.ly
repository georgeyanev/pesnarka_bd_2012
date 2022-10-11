\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Schön ist das Leben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }
    \line { " "Schön ist das Leben unserer Seele, }

    \line { " "das die ganze Erde erfüllt. }

    \line { " "Schön ist das Leben unserer Seele, }

    \line { " "das die ganze Erde erfüllt. }

    \line { " "Schön ist das Leben unserer Seele, }

    \line { " "das die ganze Erde erfüllt. (2) }


  }


}
