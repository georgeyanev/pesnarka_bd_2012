\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Die Blumen erblühten" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { " "Die Blumen erblühten unter den Strahlen der Sonne,}

  \line { " "und schon trugen sie Früchte. }

  \line { " "Und so, gekleidet in Schönheit}

  \line { " "und so, gekleidet in Reinheit,}

  \line { " "bringen sie uns die Jugend. }

  \line { " "In ihr reifen süße Früchte.}

  \line { " "Und so, wenn wir sie empfangen, }

  \line { " "erkennen wir, dass sie Gaben Gottes sind;}

  \line { " "und so, wenn wir sie empfangen,}

  \line { " "erkennen wir, dass sie eine Gabe der Liebe sind!}

    }


}
