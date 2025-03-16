\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Melodie 3 – Wenn der Tag erwacht" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Wenn der Tag erwacht,"
          "beginnen die Sonnenstrahlen zu singen."
          "Aus den Quellen des Lebens"
          "strömt in Fülle die Freude."
          "Und in dieser feierlichen Morgenstunde"
          "singt die ganze Natur."
          "Zu den beschienenen Gipfeln"
          "fliegen unsere Seelen."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Wenn der Tag erwacht,"
          "vernehmen wir den himmlischen Ruf –"
          "er bewegt und inspiriert uns"
          "zu einem lichten und schönen Leben."
          "Er wird kommen, nach den Stürmen, nach den Kämpfen."
          "Frieden wird die Erde überfluten."
          "Mächtige Kraft ist das Gute,"
          "wir glauben –  es wird siegen."
        }
      }
    }\hspace #0.1
  }
}
