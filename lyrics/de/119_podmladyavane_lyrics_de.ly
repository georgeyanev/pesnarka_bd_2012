\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Verjüngen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
     \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 

    \line { " " Ich werde mich verjüngen,  du wirst dich verjüngen,  er wird sich verjüngen.  }

    \line { " " Das sagte mir die Liebe.  Das sagte mir die Liebe.}

    \line { " " Wir, die wir dem Weg des Guten folgen, werden uns verjüngen,  }

    \line { " " ihr, die ihr dem Weg des Guten folgt, werdet euch verjüngen. }

      \line { " " sie, die dem Weg des Guten folgt,  werden sich verjüngen. }

    \line { " " Das sagte uns die Liebe.  Das sagte uns die Liebe.  }

  }
     }
}
