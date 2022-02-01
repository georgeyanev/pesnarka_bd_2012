\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Dir singen wir" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }
     
     \line { " "Dir singen wir, Dir danken wir,}
     
     \line { " "Dich segnen wir, unser Gott.}
     
     \line { " "Und wir beten zu Dir, und wir beten zu Dir,}
     \line { " " und wir beten zu Dir,}
     
     \line { " "o, unser Gott.}
     
       
    }
}
