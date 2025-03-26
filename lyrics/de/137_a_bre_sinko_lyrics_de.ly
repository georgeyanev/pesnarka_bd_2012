\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ach, du mein Sohn" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Ach, mein Sohn, weißt du,"
          "was die Nachbarn ¸ber dich sprechen?"
          "Dass du die Herde im Gebirge alleine gelassen hast"
          "und abends zur¸ckgekehrt bist,"
          "um M‰dchen abends auf dem Dorfplatz zu treffen."
          "Mädchen, die Treffen anzetteln, anzetteln"
          "sie zetteln sie an, aber sie verderben auch."
          "Ein Mädchen, mein Sohn,"
          "wählt man nicht am Abend aus."
        }
      }
    }\hspace #0.1
  }
}
