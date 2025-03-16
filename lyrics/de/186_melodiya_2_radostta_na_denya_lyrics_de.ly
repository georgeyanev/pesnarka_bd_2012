\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Melodie 2 – In der Freude des Tages" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Die Erde freut sich, der Himmel freut sich im Licht."
          "Das Korn, in den fruchtbaren Acker gesät,"
          "gedeiht heilig in der Liebe [Ljubov]."
          "Gott lässt das neue Leben wachsen in Freude und Frieden"
          "und der ganze Himmel fließt von Liebe [Ljubov] über."
        }
      }
      \vspace #0.5
      \line{ \italic"    Refrain:"}
      \line {
        "   "
        \column {
          "Nun leuchtet der Tag schön und heilig,"
          "und die Liebe ist ein lebendiger Segen."
          "Leuchte, verbreite Freude, Frieden und Liebe [obič], heiliger, göttlicher Tag."
          "Allgütiger, allweiser Gottvater, möge Er seine Gnade in den Seelen mehren."
          "Auf dass die Freude ewig währe,"
          "auf dass die Güte ewig währe im neuen seligen Leben."
          "Möge der göttliche Wille an diesem gesegneten Tag auf ewig heilig sein."
        }
      }
      \vspace #0.5
      \line {
        \bold "2."
        \column {
          "Der Schwarm aus der Sonne segnet und sprüht,"
          "damit der göttliche Ruhm das heilige Leben erleuchtet."
          "Die ganze Welt ist Licht"
          "und das Licht ist Quelle von Freude, Kraft und Leben."
        }
      }
      \vspace #0.5
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }
      \line {
        "   "
        \column {
          "Nun leuchtet der Tag..."
        }
      }
    }\hspace #0.1
  }
}
