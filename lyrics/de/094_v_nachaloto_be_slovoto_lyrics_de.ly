\version "2.18.2"

\markup \fill-line { \fontsize #deTitleFontSize "Im Anfang war das Wort" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {
\hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {

    \line { " " Im Anfang war das Wort, und das Wort war bei Gott, und das Wort war Gott.}

    \line { " "Dieses war im Anfang bei Gott. Alles wurde durch dasselbe,}
   

    \line { " " und ohne dasselbe wurde auch nicht eines, das geworden ist.}
   

    \line { " "In ihm war Leben, und das Leben war das Licht der Menschen.}
   

    \line { " "Und das Licht scheint in der Finsternis, und die Finsternis hat es nicht erfasst.}


  }


}