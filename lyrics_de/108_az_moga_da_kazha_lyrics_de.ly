\version "2.24.1"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann sagen" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {
    \line { " " Ich kann sagen,  dass die Sonne morgen aufgehen }

    \line { " " und das Antlitz der Erde erleuchten wird.}

    \line { " " Ihre Wärme wird sie allem spenden, was wächst.}

    \line { " " Strahle, mächtige Sonne, damit wir gut lernen!}
    \line { " " }

    \line { " " Alles Vernünftbegabte wird sich erheben}

    \line { " " und sich an die Arbeit machen. }

    \line { " " Strahle, mächtige Sonne, damit wir gut lernen!}
    \line { " " }

    \line { " " Alles Vernünftbegabte wird sich erheben}

    \line { " " und sich an die Arbeit machen.}

    \line { " " Strahle, mächtige Sonne, damit wir gut lernen! }


  }


}
