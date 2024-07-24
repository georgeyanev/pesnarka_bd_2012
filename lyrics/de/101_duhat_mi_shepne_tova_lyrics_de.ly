\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Der Geist flüstert mir das zu" }

\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 

\line { " " Mir wird es im Leben wohl ergehen, }

\line { " " mein Geist und meine Seele flüstern mir das zu, }
\line { " " mein Geist und meine Seele flüstern mir das zu. }

\line { " " Und der Geist flüstert mir das zu, flüstert mir das zu.}

\line { " " Der Geist und die Seele flüstern mir das zu.}

  }
}
