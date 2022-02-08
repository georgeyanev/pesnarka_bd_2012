\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Gib, gib" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
     \line { " " }


 \line { " "Gib, gib, gib alles, reines Korn, Weizenkorn. }

 \line { " "Auf dass es auf dem Feld gesät wird, }

 \line { " "auf dem schönen Feld. }

 \line { " "Auf dass es im Winter gereinigt wird. }

 \line { " "Auf dass sich alles,  }
 \line { " "was auf dem Acker gesät wurde, am Leben erfreue, }
 \line { " "auf dem Acker, vom Himmel, auf dem Acker vom Himmel. }


    }
}
