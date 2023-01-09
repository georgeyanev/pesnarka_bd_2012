\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann lieben" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

\column {
    \line { " "Ich kann lieben (ljubia), }
    \line { " "   damit ich gut werde, }

    \line { " "ich kann lieben (obitscham), }
    \line { " "       damit ich stark werde.}
    \line { " "  Die Liebe (ljubovta) und die Liebe (obitschta) }
    \line { " "  werden mich lehren, }
    \line { " " ein Diener Gottes zu werden.}


  }


}
