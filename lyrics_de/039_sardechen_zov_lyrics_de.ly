\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Herzens" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { "   " }

    \line { 1. Wir fallen heute vor Dir nieder, Herr, }

    \line { "   "mit reinen zittrigen Seelen.}

    \line { "   "Wir schütten unsere Herzen in einem Lied aus }

    \line { "   "und rufen Dich an, Allheiliger! Vergib!}
    \line { "   " }
      

    \line { 2. Vergiss unsere Sünden, }

    \line { "   "segne uns reichlich.}

    \line { "   "Allgütiger König der leuchtenden Seelen,}

    \line { "   "empfange uns in Deinem Reich!}
    \line { "   " }
 

    \line { 3. Wir lobpreisen Dich dort in der Ewigkeit,}

    \line { "   "einzig Dir gebührt der Lobpreis.}

    \line { "   "Umgrenze uns mit Deiner Barmherzigkeit,}

    \line { "   "erleuchte uns mit Deinem Licht.}
  }
}
