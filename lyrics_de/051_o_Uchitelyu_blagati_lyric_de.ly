\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Oh, gütiger Meister" }
\markup \null

\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {1. Oh, gütiger Meister,}
    \line {   "   "du bist von Güte erfüllt,}
    \line {   "   "deine Worte sind beflügelt,}
    \line {   "   "voller Weisheit und Licht.}
    \line { " " }
    \line {   2. Du bist der Bote Gottes}
    \line {   "   "unter gequälten Seelen.}
    \line {   "   "Gieße in uns Frieden und Liebe ein,}
    \line {   "   "ein neues Leben und glückliche Tage.}
    \line { " " }
    \line {   3. In Zeiten von Kummer, Unglück und Elend}
    \line {   "   "bist du allein unsere Zuflucht,}
    \line {   "   "du hast uns Trost gebracht.}
    \line {   "   "vor Dir, mein Meister, verneigen wir uns!}
    \line { " " }
    \line {  4. Deine Worte – reine Perlen,}
    \line {   "   "dein Bild – Licht.}
    \line {   "   "Oh, glücklicher Meister,}
    \line {   "   "ergieße Wärme in unsere Herzen!}


  }

}
