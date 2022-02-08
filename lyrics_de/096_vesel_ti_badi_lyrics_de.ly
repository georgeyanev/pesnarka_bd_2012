\version "2.20.0"

\markup \fill-line { \fontsize #deTitleFontSize "Sei fröhlich" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " }

\line { " "Sei fröhlich, werde munter -}

\line { " "die Sorgen des Lebens}

\line { " "sind eine unnötige Last.}
\line { " " }

\line { " "Freundlich ruft dich das Leben. }

\line { " "Sei fröhlich, werde munter}

\line { " "und erhöhe alles Lebendige mit deiner Liebe!}
\line { " " }

\line { " "Sei fröhlich, werde munter}

\line { " "bringe Freude in das Leben,}

\line { " "Freude bringe in das Leben. }

\line { " "Sei fröhlich, werde munter! }

  }
}