\version "2.20.0"

\markup \fill-line { \fontsize #6 "Die Sonne geht auf" }
\markup \null
\markup \null
\markup \fontsize #+2.5 {
  \hspace #10
  \override #'(baseline-skip . 2)

  \column {
    \line { " " }

    \line { " " Die Sonne geht auf, }

    \line { " " sie sendet Licht, }

    \line { " "  sie bringt Freude für das Leben. }


  }
}
