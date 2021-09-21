\version "2.18.2"

\markup \fill-line { \fontsize #6 "Es war einmal" }
\markup \null
\markup \null
\markup \fontsize #+2.5 {
    \hspace #10
    \override #'(baseline-skip . 2)
    
        \column {
     \line { " " }      
    
       \line { " " Es war einmal, es war einmal,}

   \line { " "als alles Dunkelheit war}

   \line { " "und in ihr erschien das Licht.}

   \line { " "Und das Licht zeichnete die Schönheit des göttlichen Lebens, }

   \line { " "das sich einverleibt hat }

   \line { " "und erhob meine Seele.}
      
       
    }
    
    
}
    