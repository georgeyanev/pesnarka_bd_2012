\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gib, gib" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {

   \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " "Gib, gib, gib alles, reine Saat, Weizenkorn. }
    \line { " "Auf dass es auf den Acker gesät wird, }
    \line { " "auf den schönen Acker. }
    \line { " "Auf dass es im Winter gereinigt wird. }
    \line { " "Auf dass sich alles,  }
    \line { " "was auf dem Feld gesät wurde, am Leben erfreue, }
    \line { " "auf dem Feld, vom Himmel, auf dem Feld, vom Himmel. }
  }
}
