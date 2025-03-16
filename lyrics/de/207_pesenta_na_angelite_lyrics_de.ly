\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Das Lied der Engel" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
         "Wenn eure Ohren offen wären, würdet ihr die Stimme der Engel hören, die singen."
          "Sie singen das Lied der Liebe."
          "Sie singen: „Ihr, die Menschen, die ihr geschaffen wurdet nach dem Ebenbild Gottes,"
          "hört die Stimme eures Schöpfers, hört die Stimme eures Vaters."
          "Der, der zu euch heute spricht! Hört Ihn! Hört Ihn und wir werden Ihn auch hören."
          "Erfüllt Seinen Willen, wie wir auch Seinen Willen erfüllen,"
          "Dies ist der Sinn des Lebens, dies ist der Sinn des Lebens,"
          "der Sinn des Lebens, der Unsterblichkeit.“"
          "Sieh, das Lied der Engel, die jetzt singen:"
          "„Ruhm unserem großen Schöpfer! Ruhm, Ruhm, Ruhm unserem Vater!"
          "Ruhm unserem Vater, unserem großen Vater.“"
        }
      }
      
    }\hspace #0.1
  }
}
