\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gebet" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Herr, Du bist alles für mich,"
          "hier unten – so viel Leid,"
          "alles ist so öde ohne Dich"
          "und nur Du verleihst ihm Bedeutung."
          "Einzig Du liebst mich,"
          "ich weiß, nur Du."
          "Ich liebe Dich."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Herr, lehre mich,"
          "alles Lebendige zu lieben,"
          "das, was Du erschaffen hast,"
          "und dass ich überall Deine Zärtlichkeit,"
          "Freude und Liebe verbreite."
          "Möge ich lernen,"
          "Dir zu dienen,"
          "zu danken."
        }
      }
    }\hspace #0.1
  }
}
