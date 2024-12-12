\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Schön ist das Leben" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
    \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { " "Schön ist das Leben unserer Seele, das die ganze Erde erfüllt. }

    \line { " "Schön ist das Leben unserer Seele, das die ganze Erde erfüllt. }

    \line { " "Schön ist das Leben unserer Seele, das die ganze Erde erfüllt,  }
    \line { " "das die ganze Erde erfüllt.  }


  }
    }

}
