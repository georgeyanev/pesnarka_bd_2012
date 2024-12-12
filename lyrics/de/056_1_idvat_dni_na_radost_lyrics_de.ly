\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Es kommen Tage der Freude" }
\markup \null
\markup \null

\markup \abs-fontsize #11 {
  \fill-line {
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

    \column {
      \line { " " Es kommen die Tage der Freude, es kommen die Tage der Freude,}

      \line { " " es kommen die Tage der Freude, für diejenigen, die Gott dienen. }

    }
  }
}
