\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Da war ein Mensch" }

\markup \null
\markup \null

\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Da war ein Mensch, von Gott gesandt,"
          "sein Name: Johannes."
          "Dieser kam zum Zeugnis,"
          "dass er zeugte von dem Licht,"
          "damit alle durch ihn glaubten."
          "Er war nicht das Licht,"
          "sondern er kam, dass er zeugte von dem Licht."
          "Er war das wahrhaftige Licht,"
          "das jeden Menschen erleuchtet,"
          "der in die Welt kommt."
          "Er war in der Welt"
          "und die Welt wurde durch ihn"
          "und die Welt kannte ihn nicht."
          "Er kam in das Seine"
          "und die Seinen nahmen ihn nicht an;"
          "so viele ihn aber aufnahmen, denen gab er Macht,"
          "Kinder Gottes zu werden,"
          "denen, die an seinen Namen glauben;"
          "die nicht aus Geblüt,"
          "auch nicht aus dem Willen des Fleisches,"
          "auch nicht aus dem Willen des Mannes,"
          "sondern aus Gott geboren sind."
        }
      }

    }\hspace #0.1
  }
}
%}










%---------------------------------------------------------------------
