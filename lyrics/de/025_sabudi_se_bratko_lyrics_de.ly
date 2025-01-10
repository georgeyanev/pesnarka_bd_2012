\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Wache auf, lieber Bruder" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Wache auf, lieber Bruder,"
          "erhebe dich vom tiefen Schlaf"
          "und nimm die jahrhundertealten Ketten"
          "von deinen Füßen ab."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "Die Liebe ist deine Mutter,"
          "deine Kraft, dein Pilot;"
          "sie wird dich stark aufrichten,"
          "dir Leben schenken."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Verlasse die düsteren Gefängnisse,"
          "draußen ist überall Licht;"
          "Frieden und Freude erwarten dich,"
          "und seliges Danach."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "Die Liebe ist dein Lehrer,"
          "auf dass sie dir das lebendige Wort geben wird;"
          "sie wird dich das Gute lehren"
          "und dich in die Weisheit einweihen."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Und sage deinem Bruder,"
          "ein süßes Wort mit neuer Regung;"
          "auf dass du sein Herz erwärmst"
          "mit deiner aufrichtigen Liebe."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "Die Liebe ist dein Erlöser:"
          "Ruf sie zur Hilfe;"
          "sie wird deine Seele vom Joch"
          "bald befreien."
        }
      }
    }\hspace #0.1
  }
}


