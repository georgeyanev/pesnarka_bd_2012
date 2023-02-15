\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Das Feuer entzündete sich" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Es wurde entzündet das Feuer der Feuerstelle.  }

    \line { " " Zu schlagen begann mein Herz, das Brot ist bereit.  }

    \line { " "Das Brot ist bereit, der neue Leuchter wurde angezündet.  }

    \line { " "Die Tafel wurde gedeckt, mein Gedanke leuchtete auf.  }

    \line { " "Möge ich heute das köstliche Brot lieben }

    \line { " "und seine süßen Worte hören.}


  }


}
