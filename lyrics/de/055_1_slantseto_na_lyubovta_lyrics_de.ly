\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Sonne der Liebe" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,deCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
    
      \line {
        \bold "  "
        \column {
          "Die Sonne der Liebe"
          "geht schon auf über der Welt."
          "Überall hin sendet sie Licht"
          "und verteilt Wärme."
          "Wir sind Strahlen der Sonne,"
          "bringen das neue Leben."
          "Wir sind Strahlen der Sonne,"
          "bringen das neue Leben."
        }
      }
    }\hspace #0.1
  }
}


%---------------------------------------------------------------------
