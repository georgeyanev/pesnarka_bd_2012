\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sei fröhlich" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #12
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
\line { " "Sei fröhlich, werde munter;}

\line { " "die Sorgen des Lebens}

\line { " "sind eine nutzlose Last.}
\line { " " }

\line { " "Liebevoll ruft dich das Leben: }

\line { " "Sei fröhlich, werde munter}

\line { " "und erhöhe alles Lebendige durch Liebe!}
\line { " " }

\line { " "Sei fröhlich, werde munter}

\line { " "bringe Freude in das Leben,}

\line { " " in das Leben bringe Freude, in das Leben, du. }

\line { " "Sei fröhlich, werde munter! }

  }
}
