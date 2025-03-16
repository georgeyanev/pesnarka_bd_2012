\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich bin ein Fremder in dieser Welt" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ich bin ein Fremder in dieser Welt."
          "Ich kenne niemanden außer Dir."
          "Du, oh Herr, mein Gott, hast alles für mich erschaffen."
          "Ich richte meinen Dank an Dich."
          "In Dich, Herr, setzte ich mein Vertrauen."
          "Möge mein Gebet zu Dir hinaufsteigen."
        }
      }
      
    }\hspace #0.1
  }
}
