\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann sagen" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ich kann sagen, dass die Sonne morgen aufgehen"
          "und das Antlitz der Erde erleuchten wird."
          "Ihre Wärme wird sie allem spenden, was wächst."
          "Strahle, mächtige Sonne, damit wir gut lernen!"
          "Alles Vernunftbegabte wird sich erheben"
          "und sich an die Arbeit machen."
          "Strahle, mächtige Sonne, damit wir gut lernen!"
        }
      }
    }\hspace #0.1
  }
}

