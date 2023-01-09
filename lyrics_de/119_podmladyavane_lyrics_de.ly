\version "2.24.0"

\markup \fill-line { \fontsize #deTitleFontSize "Ich werde mich verjüngen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #14
    \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

 \line { " " Ich werde mich verjüngen,  }

 \line { " " du wirst dich verjüngen,  }

 \line { " " er wird sich verjüngen.  }

 \line { " " Das sagte mir die Liebe.  }

 \line { " " Wir, die wir den Weg des Guten befolgen, }

 \line { " " werden uns verjüngen,  }

 \line { " " ihr, die ihr den Weg des Guten befolgt, }

 \line { " " werdet euch verjüngen. }

 \line { " " Das sagte mir die Liebe. }

 \line { " " Das sagte mit die Liebe.  }

  }
}
