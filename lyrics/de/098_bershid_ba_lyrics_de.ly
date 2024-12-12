\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Beršid Ba" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
      \fill-line {
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
    
    
}
