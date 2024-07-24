\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich kann sagen" }

\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \hspace #20
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 
    \line { " " Ich kann sagen,  dass die Sonne morgen aufgehen }

    \line { " " und das Antlitz der Erde erleuchten wird.}

    \line { " " Ihre Wärme wird sie allem spenden, was wächst.}

    \line { " " Strahle, mächtige Sonne, damit wir gut lernen!}
 
    \line { " " Alles Vernunftbegabte wird sich erheben}

    \line { " " und sich an die Arbeit machen. }

    \line { " " Strahle, mächtige Sonne, damit wir gut lernen!}



  }


}
