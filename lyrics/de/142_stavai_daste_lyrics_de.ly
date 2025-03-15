\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Steh' auf, Tochter!" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip){
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "An einem Sommertag, in der frühen Morgenröte,"
          "näherte sich mir meine Mutter leise."
          "Mit süßer Stimme sagte sie mir ein gütiges Wort:"
          "„Stehe auf, Tochter, weil auf den Acker gegangen werden soll."
          "Stehe auf, weil dein Vater draußen auf mich"
          "und auf dich mit dem Gespann wartet.“"
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Wenn die Sonne aufgeht, sollst du auf dem Acker sein."
          "Mit der Sichel in der Hand und mit einem Lied begrüße den Tag."
          "Stehe auf, Tochter, damit die Sonne dich nicht im Hause findet."
          "Stehe auf, Tochter, weil alle Mädchen und Jungen"
          "schon zum Acker aufgebrochen sind."
        }
      }
      \vspace #1
      \line {
        \bold "3."
        \column {
          "Der Acker, meine Tochter, ist das Leben,"
          "wo der gute Samen gesät wird."
          "Wenn er gedeiht, dann trägt er Leben in uns hinein."
          "Stehe auf, Tochter, die Liebe wartet heute auf mich und auf dich."
          "Stehe auf, sie bringt uns ihr neues, lebendiges Gewand."
          "Stehe auf, weil das Leben draußen schon auf mich"
          "und auf dich mit Güte wartet."
        }
      }
    }\hspace #0.1
  }
}
