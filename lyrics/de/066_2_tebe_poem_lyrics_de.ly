\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Dir singen wir" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {
  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

    \column {
      \line { " "Dir singen wir, Dir danken wir,}

      \line { " "Dich lobpreisen wir, unser Gott.}

      \line { " "Und wir beten zu Dir, }
      \line { " " und wir beten zu Dir,}
      \line { " " und wir beten zu Dir,}

      \line { " "oh, unser Gott.}

    }
  }
}
