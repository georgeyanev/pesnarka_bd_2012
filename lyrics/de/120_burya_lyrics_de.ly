\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Sturm" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold " "
        \column {
          "Traurig ist meine Seele. Trauer und Kummer überkommen mich."

          "Ein starker Sturm erhebt sich in mir, aber ich klage niemanden an."

          "Der Sturm ist ein Sturm, aber Er ist in mir."

          "Der Sturm versteht mich nicht, ich aber verstehe ihn."

          "Der Sturm schüttelt mich durch, für das Gute, das in mir ist."
        }
      }
    }\hspace #0.1
  }
}
