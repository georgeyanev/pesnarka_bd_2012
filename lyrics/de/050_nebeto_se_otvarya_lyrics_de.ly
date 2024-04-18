\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Der Himmel öffnet sich" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Der Himmel öffnet sich}

    \line { "   "und die Engel singen.}

    \line { "   "Leuchtende Blitze }

    \line { "   "zerstreuen Dunkelheit und Finsternis.}

     \vspace #0.5

    \line { 2. Christus kommt herab }

    \line { "   "in sein Reich, }

    \line { "   "mit Macht und Kraft, }

    \line { "   "in all seiner Herrlichkeit.}
   \vspace #0.5
    \line { 3. Kommt, alle Brüder,}

    \line { "   "ganz in Weiß gekleidet,}

    \line { "   "auf dass wir ihn mit Freude,}

    \line { "   "feierlich und ehrerbietig}
    \line { "   " willkommen heißen.}
    



  }

    \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { 4. Er kommt auf die Erde, }

    \line { "   "um ewiglich zu herrschen}

    \line { "   "und allen ein Leben }

    \line { "   "in Wahrheit zu schenken.}

     \vspace #0.5
    \line { 5. Gepriesen sei das Reich}

    \line { "   "unseres dreifaltigen Gottes,}

    \line { "   "von nun an und in Ewigkeit}

    \line { "   "und für alle Zeiten.} }

}
