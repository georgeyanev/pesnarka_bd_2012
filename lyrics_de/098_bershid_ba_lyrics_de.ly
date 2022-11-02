\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Bershid ba" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {    
    
       \line { " " Es war einmal, es war einmal,}

   \line { " "als alles Dunkelheit war}

   \line { " "und in ihr erschien das Licht.}

   \line { " "Und das Licht zeichnete die Schönheit des göttlichen Lebens, }

   \line { " "das sich einverleibt hat }

   \line { " "und erhob meine Seele.}
      
       
    }
    
    
}
