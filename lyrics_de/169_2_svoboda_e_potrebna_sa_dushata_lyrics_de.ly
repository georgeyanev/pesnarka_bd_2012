\version "2.20.0"

\markup \fill-line { \fontsize #6 "Der Freiheit bedarf die Seele" }
\markup \null
\markup \null
\markup \fontsize #+2.5 {
  \hspace #10
  \override #'(baseline-skip . 2)

  \column {
    \line { " " }

   \line { "Der Freiheit bedarf die Seele. " }

  }
}