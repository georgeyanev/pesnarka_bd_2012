\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Frühlingslied" }

\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Lieber Herr, höre unser Lied:"

          "Wir singen von der Sonne, vom Frühling."

          "Höre unser Lied:"

          "Der Frühling kommt, bringt neues Leben."

          "Die erste Frühlingsblume:"

          "Ich erwecke alle aus dem Schlaf."

          "Mich sieht die Sonne zuerst an."

          "Liebe Sonne, Gottesgabe,"

          "du bist der Quell des Lebens,"

          "du sendest uns einen Strahl,"

          "der die frischen, zarten Blättchen öffnet."

          "Frühling, Frühling, voller Leben;"

          "ewiger Frühling, du bist ein Paradies,"

          "eine Gottesgabe, eine Gottesgabe."

          "Ich lebe nur für Dich!"
        }
      }
    }\hspace #0.1
  }
}
