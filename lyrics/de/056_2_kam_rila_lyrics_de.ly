\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ins Rila fliegen wir" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
   \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Ins Rila fliegen wir  }
    \line {   "   " mit machtvollem Gedanken jeden Tag.  }
    \line {   "   " Mit diesem Wunsch in der Brust }
    \line {   "   " leben wir in einer unvergänglichen Welt. }

     \vspace #0.5
    \line { 2. Wieder werden wir uns  }
    \line {   "   " bei den Rila-Augen treffen. }
    \line {   "   " Hier wird unsere Violine }
    \line {   "   " in neuem Klang ertönen. }



  }

   \hspace #1
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
 

  \column { 
      
    \line { 3. Unsere Seelen – Geigen  }
    \line {   "   " werden Schönheit ausgießen, }
    \line {   "   " denn mit ihnen wird spielen  }
    \line {   "   " das Gute, die Liebe. }

    \vspace #0.5
    \line { 4. Wir werden ins Rila gehen, }
    \line {   "   " wir werden Musala sehen, }
    \line {   "   " die unendliche Natur  }
    \line {   "   " und unseren lieben Vater. }
  }



}

