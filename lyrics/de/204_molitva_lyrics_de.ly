\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Gebet" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Ich glaube an Dich, Herr, der Du zu mir in der Vergangenheit gesprochen hast."
          "Ich glaube an Dich, Herr, der Du zu mir jetzt sprichst."
          "Ich glaube an Dich, Herr, der Du zu mir in der Zukunft sprechen wirst."
          "Gepriesen sei dein Name, auf dass wir in Deiner Herrlichkeit leben."
          "Möge Dein Reich kommen und mögen wir an Deiner Freude teilhaben."
          "Dein Wille geschehe wie oben im Himmel, so unten auf der Erde."
          "Auf dass wir mit Dir zusammenarbeiten."
          "Amen. So sei es."
        }
      }
      
    }\hspace #0.1
  }
}