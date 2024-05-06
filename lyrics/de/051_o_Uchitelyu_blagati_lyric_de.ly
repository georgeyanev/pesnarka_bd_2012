\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Oh, gütiger Meister" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
\hspace #3
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {1. Oh, gütiger Meister,}
    \line {   "   "du bist voller Güte,}
    \line {   "   "deine Worte sind beflügelt,}
    \line {   "   "voller Weisheit und Licht.}
    \vspace #0.5
    \line {   2. Du bist ein Gesandter Gottes}
    \line {   "   "inmitten gequälter Seelen.}
    \line {   "   "Gieße in uns Frieden und Liebe,}
    \line {   "   "ein neues Leben und glückliche Tage.}
 

  }

    \hspace #1
   \override #`(baseline-skip . ,deCoupletBaselineSkip)


  \column {
  
    \line {   3. In Kummer, Unglück und Elend}
    \line {   "   "bist du allein unsere Zuflucht,}
    \line {   "   "du hast uns Trost gebracht,}
    \line {   "   "vor Dir, mein Meister,}
    \line {   "   "verneigen wir uns!}
     \vspace #0.5
    \line {  4. Deine Worte – reine Perlen,}
    \line {   "   "dein Bild – Licht,}
    \line {   "   "oh, glücklicher Meister,}
    \line {   "   "ergieße in unsere Herzen die Wärme!}


  }

}
