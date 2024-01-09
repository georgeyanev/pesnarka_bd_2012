\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ich wage zu sagen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Ich wage zu sagen, }

    \line { " "dass die Sonne licht ist. }

    \line { " "Ich wage zu sagen, }

    \line { " "dass die Sonne licht ist.}

    \line { " "Das lässt sich nicht leugnen.}

    \line { " "Dank ihr schmilzt alles, }

    \line { " "dank ihr wächst alles, }

    \line { " "dank ihr blüht alles immer,}

    \line { " "dank ihr reift alles.}

    \line { " " Dank ihr steht alles auf, }

    \line { " "faltet seine Decken zusammen}

    \line { " "und begibt sich an die Arbeit.  }

  }


}
