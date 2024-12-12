\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sei fröhlich" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {

  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)
    \column {
      \line { " "Sei fröhlich, werde munter;}

      \line { " "die Sorgen des Lebens}

      \line { " "sind eine nutzlose Last.}
      \vspace #0.5

      \line { " "Liebevoll ruft dich das Leben: }

      \line { " "Sei fröhlich, werde munter}

      \line { " "und erhöhe alles Lebendige durch Liebe!}
      \vspace #0.5

      \line { " "Sei fröhlich, werde munter}

      \line { " "bringe Freude in das Leben,}

      \line { " " in das Leben bringe Freude, in das Leben, du. }

      \line { " "Sei fröhlich, werde munter! }
    }
  }
}
