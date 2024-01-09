\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Sturm" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Traurig ist meine Seele. }
   
   \line { " " Trauer und Kummer überkommen mich. }

   \line { " " Ein starker Sturm erhebt sich in mir, }

   \line { " "  aber ich klage niemanden an.}

   \line { " " Der Sturm ist ein Sturm, aber Er ist in mir. }

   \line { " " Der Sturm versteht mich nicht, }

 \line { " " ich aber verstehe ihn. }

   \line { " " Der Sturm schüttelt mich durch, }

   \line { " " für das Gute, das in mir ist. }

  }
}
