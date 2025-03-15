\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Feuer entzündete sich" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Es wurde entzündet das Feuer der Feuerstelle."
          "Zu schlagen begann mein Herz."
          "Das Brot ist bereit, das Brot ist bereit."
          "Der neue Leuchter wurde angezündet."
          "Die Tafel wurde gedeckt."
          "Mein Gedanke leuchtete auf:"
          "Möge ich heute das köstliche Brot lieben"
          "und seine süßen Worte hören."
          "Möge ich heute das köstliche Brot lieben"
          "und seine süßen Worte hören."
        }
      }
    }\hspace #0.1
  }
}
