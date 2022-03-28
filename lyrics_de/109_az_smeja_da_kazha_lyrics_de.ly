\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ich wage zu sagen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }
    \line { " "Ich wage zu sagen, }

    \line { " "dass die Sonne hell ist. }

    \line { " "Ich wage zu sagen, }

    \line { " "dass die Sonne hell ist.}

    \line { " "Das lässt sich nicht leugnen.}

    \line { " "Bei ihr schmilzt alles, }

    \line { " "bei ihr wächst alles, }

    \line { " "bei ihr blüht alles,}

    \line { " "bei ihr reift alles.}

    \line { " "Bei ihr steht alle auf, }

    \line { " "faltet seine Decken zusammen}

    \line { " "und begibt sich an die Arbeit.  }

  }


}
