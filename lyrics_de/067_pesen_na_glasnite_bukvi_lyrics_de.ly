\version "2.22.0"

\markup \fill-line { \fontsize #6 "Das Lied der Vocale" }
\markup \null
\markup \null
\markup \fontsize #+2.5 {
    \hspace #24
    \override #'(baseline-skip . 2)

    \column {
     \line { " " }
     
     \line { " "a ... (12)}
     \line { " "o ... (12)}
     \line { " "u ...  (12)}
     \line { " "a o u ... (12)}
     \line { " "a ...  (12)}
     \line { " "e ... (12)}
     \line { " "i ... (12)}
     
    \line { " " a e i ...(12)}
   }
}    
