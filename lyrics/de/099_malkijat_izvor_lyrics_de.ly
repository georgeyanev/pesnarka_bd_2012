\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die kleine Quelle"}
\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
        "Ein heller Strahl steigt von oben herab,"
         "um die kleinen Blumen zu erleuchten."
         "Nah entspringt eine kleine Quelle."
         "Sie sprudelt munter, murmelt und plätschert,"
         "und die Blumen erfreut sie auf ewig."
         "Sie erfreut, erfreut, erfreut, sprudelt, murmelt, sie erfreut,"
         "erfreut, sie sprudelt, sie erfreut, erfreut,"
         "sie sprudelt munter, plätschert und erfreut die Blumen."
        }
      }
    }\hspace #0.1
  }
}
