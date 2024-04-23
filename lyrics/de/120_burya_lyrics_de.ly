\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Sturm" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #5
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { " " Traurig ist meine Seele. Trauer und Kummer überkommen mich. }

   \line { " " Ein starker Sturm erhebt sich in mir, aber ich klage niemanden an.}

   \line { " " Der Sturm ist ein Sturm, aber Er ist in mir. }

   \line { " " Der Sturm versteht mich nicht, ich aber verstehe ihn. }

   \line { " " Der Sturm schüttelt mich durch, für das Gute, das in mir ist. }

  }
}
