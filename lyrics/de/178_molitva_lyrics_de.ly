\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Gebet" }
\markup \null
\markup \null
\markup \fontsize #deCoupletFontSize {
  \hspace #10
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column { 

    \line { " "Höre, Herr, an Dich richte ich mein Gebet. }

    \line { " "Mein Körper befreie sich von allen Ungerechtigkeiten, }

    \line { " "die ich in die Welt bringe. }

    \line { " "Herr, Herr, Herr, Deine Barmherzigkeit komme,}

    \line { " "über mich, über mich.}

    \line { " "Ich, der ich noch nicht weiß,}

    \line { " "wie ich leben soll.}


}

}