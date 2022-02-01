\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Oh, gütiger Meister" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { "   " }
    \line {1. Oh, gütiger Meister,}
    \line {   "   "du bist von Güte erfüllt,}
    \line {   "   "deine Worte sind beflügelt,}
    \line {   "   "voller Weisheit und Licht.}
    \line { " " }
    \line {   2. Du bist der Bote Gottes}
    \line {   "   "unter gequälten Seelen.}
    \line {   "   "Gieße in uns Frieden und Liebe,}
    \line {   "   "ein neues Leben und glückliche Tage.}
    \line { " " }
    \line {   3. In Zeiten von Kummer, Unglück und Elend}
    \line {   "   "nur du bist unsere Zuflucht,}
    \line {   "   "du hast uns Trost gebracht.}
    \line {   "   "Dir, mein Meister, gilt Verneigung!}
    \line { " " }
    \line {  4. Deine Worte – reine Perlen,}
    \line {   "   "dein Bild – Licht.}
    \line {   "   "Oh, verehrter Meister,}
    \line {   "   "fülle unsere Herzen mit Wärme!}


  }

}
