\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Es kommen Tage der Freude" }
\markup \null

\markup \fontsize #deCoupletFontSize {
  \hspace #16
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " "Es kommen die Tage der Freude, }

    \line { " "es kommen die Tage der Freude,}

    \line { " "es kommen die Tage der Freude,}

    \line { " "für diejenigen, die Gott dienen. }

  }

}
