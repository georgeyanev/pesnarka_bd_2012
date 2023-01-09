\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Frühlingslied" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
 \line { " "Nun kommt der wundervolle Frühling; }

 \line { " "die Sonne geht auf, }

 \line { " "alles erwacht, gedeiht, lebt, }

 \line { " "und freut sich und dankt dem Herrn.}

 \line { " "Der Frühling, der Frühling ist da!}

 \line { " "Ein kleiner Vogel am Himmel zwitschert süß, }

 \line { " "die Sonne überströmt freundlich die ganze Welt mit Freude und Liebe.}

 \line { " "Die gesamte Schöpfung frohlockt und dankt dem Herrn! }

 \line { " "Der Frühling, der Frühling ist da!}

  }
}
