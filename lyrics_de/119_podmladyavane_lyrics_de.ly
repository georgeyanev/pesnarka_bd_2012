\version "2.24.2"

\markup \fill-line { \fontsize #deTitleFontSize "Verjüngen" }
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

    \line { " " Wir, die wir dem Weg des Guten folgen, }

    \line { " " werden uns verjüngen,  }

    \line { " " ihr, die ihr dem Weg des Guten folgt, }

    \line { " " werdet euch verjüngen. }

      \line { " " sie, die dem Weg des Guten folgt, }

    \line { " " werden sich verjüngen. }

    \line { " " Das sagte uns die Liebe. }

    \line { " " Das sagte uns die Liebe.  }

  }
}
