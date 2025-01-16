\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "An den Himmlischen König" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "  "
        \column {
          "Vorwärts, vorwärts zum Ruhm,"
          "in den Kampf für den himmlischen König,"
          "den König der Gerechtigkeit,"
          "des Friedens und der Liebe,"
          "des Friedens und der Liebe,"
          "des Friedens und der Liebe,"
          "des Friedens und der Liebe!"
        }
      }
      \vspace #1
           \line {
        "   "
        \column {
          "Ruhm, Ruhm gebührt Dir;"
          "Du bist der König der Gerechtigkeit und des Friedens,"
          "Du bist der König der Gerechtigkeit und des Friedens,"
          "des Friedens und der Liebe"
          "des Friedens und der Liebe"
          "des Friedens und der Liebe"
          "des Friedens und der Liebe"
          "der Liebe, der Liebe."
        }
      }
    }\hspace #0.1
  }
}
