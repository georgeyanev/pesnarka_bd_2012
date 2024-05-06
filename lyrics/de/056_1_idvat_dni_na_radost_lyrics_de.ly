\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Es kommen Tage der Freude" }
\markup \null
\markup \null

\markup \abs-fontsize #10 {
   \hspace #27
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Es kommen die Tage der Freude, }

    \line { " " es kommen die Tage der Freude,}

    \line { " " es kommen die Tage der Freude,}

    \line { " " für diejenigen, die Gott dienen. }

  }

}
