\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Ruf des Herzens" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #25
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { 1. Vor Dir, Herr, werfen wir uns heute nieder, }

    \line { "   " mit reinen, bebenden Seelen.}

    \line { "   "Im diesem Lied schütten wir unsere Herzen aus }

    \line { "   "und flehen Dich an: Hochheiliger, verzeih!}
   \vspace #0.5


    \line { 2. Vergiss unsere Sünden, }

    \line { "   "segne uns reichlich.}

    \line { "   "Allgütiger König der lichten Seelen,}

    \line { "   "empfange uns in Deinem Reich!}
    \vspace #0.5


    \line { 3. Dort werden wir dich preisen in Ewigkeit,}

    \line { "   "einzig Dir gebührt Lobpreisung.}

    \line { "   "Umgrenze uns mit Deiner Barmherzigkeit,}

    \line { "   "erleuchte uns mit Deinem Licht.}
  }
}
