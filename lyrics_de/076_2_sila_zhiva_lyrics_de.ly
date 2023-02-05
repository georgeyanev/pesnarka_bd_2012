\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Lebendige Kraft" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Lebendige Kraft, lebendige Kraft, }

    \line { " " sage mir, sage mir,}

    \line { " " wo das Wasser entspringt. (2)}

    \line { " " Entspringt, entspringt, wo das Wasser entspringt.}

    \line { " " Sage mir, sage mir, sage mir, süße Worte zwei,}

    \line { " " deine Worte zwei,}

    \line { " " süße Worte zwei.}




  }


}
