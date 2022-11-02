\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Lebendige Kraft" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Lebendige Kraft, lebendige Kraft,}

    \line { " " sage mir, sage mir,}

    \line { " " woher das reine Wasser entspringt. (2)}

    \line { " " Entspringt, entspringt, wo das Wasser entspringt.}

    \line { " " Sage mir süße Worte zwei,}

    \line { " " deine Worte zwei,}

    \line { " " süße Worte zwei.}




  }


}
