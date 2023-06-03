\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Herzens" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Vor Dir, Herr, werfen wir uns heute nieder, }

    \line { "   " mit reinen, bebenden Seelen.}

    \line { "   "Im diesem Lied schütten wir unsere Herzen aus }

    \line { "   "und flehen Dich an: Hochheiliger, verzeih!}
    \line { "   " }


    \line { 2. Vergiss unsere Sünden, }

    \line { "   "segne uns reichlich.}

    \line { "   "Allgütiger König der lichten Seelen,}

    \line { "   "empfange uns in Deinem Reich!}
    \line { "   " }


    \line { 3. Dort werden wir dich preisen in Ewigkeit,}

    \line { "   "einzig Dir gebührt Lobpreisung.}

    \line { "   "Umgrenze uns mit Deiner Barmherzigkeit,}

    \line { "   "erleuchte uns mit Deinem Licht.}
  }
}
