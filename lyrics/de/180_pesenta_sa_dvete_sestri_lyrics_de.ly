\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied über die zwei Schwestern" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Ich trage in meinem Leben das Leid mit Freude –"
         "es ist meine gute Freundin, die mich so gut lehrt."
         "Ich trage in meinem Leben das Leid mit Freude."
         "Es ist meine Freundin, die mich lehrt."
         "Obgleich ich unaufhörlich seufze,"
         "bringt sie mich sanftmütig voran."
         "Und sie spricht zu mir süße Worte"
         "über ihre Schwester Freude,"
         "die mich mit Freude empfangen wird."
         "Dann erzitterte mein Herz zum ersten Mal"
         "wegen meiner Schwester Freude."
        }
      }
      
    }\hspace #0.1
  }
}
