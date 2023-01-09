\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize " Ich bin das weiße Schneeglöckchen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {1. Ich bin das weiße Schneeglöckchen}

    \line { "   "inmitten der Gräsern des Waldes,}

    \line { "   "schüchtern wie ein junges Mädchen }

    \line { "   "unter den Blicken der Menschen. }

    \line { "     "Die böse Stiefmutter hat mich geweckt, }

    \line { "     "mit dem Schnee und mit dem Wind. }

    \line { "     "Alles Lebendige wundert sich, }

    \line { "     "dass ich eine Frühblüher bin.}

    \line { "   " }

    \line { 2. Ich zeige euch eine neue Freude}

    \line { "   "mit einem früh erwachten Glöckchen,}

    \line { "   "und erzähle über den Frühling}

    \line { "   "ein wunderbares Märchen,}

    \line { "     "Dass nach mir das Veilchen}

    \line { "     "bei euch Gast sein wird, }

    \line { "     "und dass man mit dieser lieben Freundin}

    \line { "     "die Nachtigall hören wird.}
    \line { "   " }

    \line { 3. Dass Lämmer blöken werden}

    \line { "   "auf grünen Weiden, }

    \line { "   "die Bauer werden }

    \line { "   "die gedüngten Feldern säen.}

    \line { "     "Goldene Ähren werden reifen,}

    \line { "     "auf diesen wunderbaren Feldern.}

    \line { "     "Die Engel werden Gott loben }

    \line { "     "mit den allerschönsten Liedern.}
  }
}
