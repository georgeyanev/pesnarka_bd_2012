\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Der Geist flüstert mir das zu" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
   

\line { " " Mir wird es im Leben wohl ergehen, }

\line { " " mein Geist und meine Seele flüstern mir das zu, }
\line { " " mein Geist und meine Seele flüstern mir das zu. }

\line { " " Und der Geist flüstert mir das zu, flüstert mir das zu.}

\line { " " Der Geist und die Seele flüstern mir das zu.}

  }
}
