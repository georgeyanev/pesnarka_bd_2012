\version "2.22.1"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied über die zwei Schwestern" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " "Ich trage in meinem Leben die Trauer mit Freude -}

    \line { " "sie ist meine gute Freundin, die mich so gut lehrt. }

    \line { " "Ich trage in meinem Leben die Trauer mit Freude.}

    \line { " "Sie ist meine Freundin, die mich lehrt.}

    \line { " "Obgleich ich unaufhörlich seufze, }

    \line { " "bringt sie mich sanftmütig voran. }

    \line { " "Und sie spricht zu mir süße Worte}

    \line { " "über ihre Schwester Freude,}

    \line { " "die mich mit Freude empfangen wird.}

    \line { " "Dann erzitterte mein Herz zum ersten Mal }

    \line { " "für meine Schwester Freude.}

  }
}