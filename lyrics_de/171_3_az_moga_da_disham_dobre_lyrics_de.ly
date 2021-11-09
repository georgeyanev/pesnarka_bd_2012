\version "2.20.0"

\markup \fill-line { \fontsize #6 "Ich kann atmen" }
\markup \null
\markup \null
\markup \fontsize #+2.5 {
  \hspace #10
  \override #'(baseline-skip . 2)

  \column {
    \line { " " }

\line { " "Ich kann schon gut atmen, }

\line { " "ich kann schon gut atmen.}

  }
}
