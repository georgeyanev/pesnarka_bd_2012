\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Gelobt sei der Herr" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #25
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Gelobt sei der Herr, unser Gott,}

    \line { " "der Herr aller Zeiten!}

    \line { " "Gepriesen sei unser Vater,}

    \line { " "der Vater der lichtvollen Geister}

    \line { " "der lichtvollen Geister, der lichtvollen Geister,  }
    \line { " "der lichtvollen Geister, der lichtvollen Geister.  }

  }
}
