\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sei fröhlich" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Sei fröhlich, werde munter;"
          "die Sorgen des Lebens"
          "sind eine nutzlose Last."
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Liebevoll ruft dich das Leben: "
          "Sei fröhlich, werde munter"
          "und erhöhe alles Lebendige durch Liebe!"
        }
      }
      \vspace #1
      \line {
        \bold "  "
        \column {
          "Sei fröhlich, werde munter"
          "bringe Freude in das Leben,"
          "in das Leben bringe Freude, in das Leben, du."
          "Sei fröhlich, werde munter!"
        }
      }
    }\hspace #0.1
  }
}
