\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied über die zwei Schwestern" }
\markup \null
\markup \null
\markup \abs-fontsize #10  {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Ich trage in meinem Leben das Leid mit Freude – }

    \line { " "es ist meine gute Freundin, die mich so gut lehrt. }

    \line { " "Ich trage in meinem Leben das Leid mit Freude.}

    \line { " "Es ist meine Freundin, die mich lehrt.}

    \line { " "Obgleich ich unaufhörlich seufze, }

    \line { " "bringt sie mich sanftmütig voran. }

    \line { " "Und sie spricht zu mir süße Worte}

    \line { " "über ihre Schwester Freude,}

    \line { " "die mich mit Freude empfangen wird.}

    \line { " "Dann erzitterte mein Herz zum ersten Mal }

    \line { " "wegen meiner Schwester Freude.}

  }
}
