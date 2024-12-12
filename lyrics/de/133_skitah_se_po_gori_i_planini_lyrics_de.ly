\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Ich wanderte in Wäldern und Bergen" }
\markup \null
\markup \null
\markup \abs-fontsize #11 {
      \fill-line {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

  \line { " " Ich wanderte in Wäldern und Bergen. }

  \line { " " Ein Unbekannter begleitete mich. }

  \line { " " Wir erklommen helle Gipfel und stiegen wieder hinab,  }

  \line { " " und während wir liefen, war Er immer bei mir.  }

  \line { " " Dort oben sah ich Sein Licht,  }

  \line { " " welches mich erleuchtete, und Er sagte:  }

  \line { " " „Erinnere dich daran, dass du oben sein sollst; }

  \line { " " steige hinab und wisse – sei allen nützlich!“ }


  }
      }
}
