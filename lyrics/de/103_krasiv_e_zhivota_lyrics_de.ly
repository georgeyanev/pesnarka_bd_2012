\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Schön ist das Leben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #17
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Schön ist das Leben unserer Seele, }

    \line { " "was die ganze Erde erfüllt. }

    \line { " "Schön ist das Leben unserer Seele, }

    \line { " "was die ganze Erde erfüllt. }

    \line { " "Schön ist das Leben unserer Seele, }

    \line { " "das die ganze Erde erfüllt,  }
    \line { " "das die ganze Erde erfüllt.  }


  }


}
