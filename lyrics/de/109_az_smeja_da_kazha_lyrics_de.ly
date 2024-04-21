\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ich wage zu sagen" }

\markup \null
\markup \null
\markup \abs-fontsize #10 {

  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { " "Ich wage zu sagen, dass die Sonne licht ist. }

    \line { " "Ich wage zu sagen, dass die Sonne licht ist.}

    \line { " "Das lässt sich nicht leugnen. Dank ihr schmilzt alles, dank ihr wächst alles, }

    \line { " "dank ihr blüht alles immer, dank ihr reift alles. Dank ihr steht alles auf,}

    \line { " "  faltet seine Decken zusammen und begibt sich an die Arbeit.  }

  }


}
