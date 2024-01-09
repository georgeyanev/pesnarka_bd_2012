\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Das Feuer entzündete sich" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Es wurde entzündet das Feuer der Feuerstelle.  }

    \line { " " Zu schlagen begann mein Herz.}
    \line { " " Das Brot ist bereit, das Brot ist bereit. }
    \line { " " }

    \line { " " Der neue Leuchter wurde angezündet.  }

    \line { " "Die Tafel wurde gedeckt. }
    \line { " " Mein Gedanke leuchtete auf:  }

    \line { " "Möge ich heute das köstliche Brot lieben }

    \line { " "und seine süßen Worte hören.}
    \line { " "Möge ich heute das köstliche Brot lieben }

    \line { " "und seine süßen Worte hören.}


  }


}
