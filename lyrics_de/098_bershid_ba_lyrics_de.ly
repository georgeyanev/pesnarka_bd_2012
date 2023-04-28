\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Bershid ba" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #15
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {    
    
    \line { " " Es war einmal, es war einmal,}

   \line { " " als alles Finsternis war,}

   \line { " " und in ihr war das Licht erschienen.}

   \line { " " Und das Licht zeichnete}
     \line { " " die Schönheit des göttlichen Lebens, }

   \line { " " das in mich einzog }

   \line { " " und meine Seele erhob.}
      
       
    }
    
    
}
