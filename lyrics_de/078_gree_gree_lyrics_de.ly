\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Es scheint, es scheint" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line {   "   "Das Licht scheint,}

    \line {   "   "das Licht scheint,}

    \line {   "   "das Licht scheint,}

    \line {   "   "das Licht scheint,}

    \line {   "   "das Licht scheint,}

    \line {   "   "das Licht scheint,}

    \line {   "   "das Licht scheint,}
    \line {   "   " es   scheint, scheint, scheint, scheint, scheint}
    
      \line {   "   "  Auf die Gräser, auf die Gewässer (auf das Wasser), }

   \line {   "   " auf die Blumen, bringt den Kindern Freude. }

   \line {   "   " Es bescheint die Gräser, die Gewässer (auf das Wasser), }

   \line {   "   " die Blumen, bringt Freude für die Herzen. }




  }


}
