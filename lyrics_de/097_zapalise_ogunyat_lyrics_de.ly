\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Das Feuer entzündete sich" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Das Feuer der Feuerstelle entzündete sich.  }

    \line { " "Mein Herz begann zu schlagen, das Brot ist bereit.  }

    \line { " "Das Brot ist bereit, der neue Leuchter wurde anzündet.  }

    \line { " "Der Tisch ist gedeckt, mein Gedanke ist erschienen.  }

    \line { " "Möge ich heute das wohlschmeckende Brot lieben   }

    \line { " "und seine süßen Worte hören.   }


  }


}
