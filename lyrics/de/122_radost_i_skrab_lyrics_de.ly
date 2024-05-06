\version "2.24.3"

\markup \fill-line { \fontsize #deTitleFontSize "Freude und Gram" }
\markup \null
\markup \null
\markup \abs-fontsize #10 {
  \override #`(baseline-skip . ,deCoupletBaselineSkip)

  \column {

    \line { " " Ich habe über dich, Gram, gehört,   }
    \line { " " dass du grausam wärst,   }
    \line { " " dass du Leid zufügst.   }
    \line { " " Weißt du nicht,  }
    \line { " " dass ich ein armer Fremder bin?   }
    \line { " " Sage mir, was du von mir willst,   }
    \line { " " sage es mir!  }
    \line { " " Sage mir, was du von mir willst,   }
    \line { " " ich muss es wissen!  }

    \vspace #0.5

    \line { " " „Schwerlich kann mich jemand lieben.   }
    \line { " " Dort ist der Gram!  }
    \line { " " Wer mich liebt [običam] }
    \line { " " und mich gut empfängt,  }
    \line { " " nur der kann das Leben verstehen.   }

    \vspace #0.5

    \line { " " Schwierig und steil ist der Weg,   }
    \line { " " auf dem ich gehe.   }
    \line { " " Schwerlich kann mir dort jemand folgen   }
    \line { " " und für den Sterblichen   }
    \line { " " ist das fast unmöglich.  }

    \vspace #0.5

    \line { " " Liebt mich jedoch jemand und   }
    \line { " " denkt gut über mich,  }
    \line { " " er wird ein Bürger aus einer }
    \line { " " vollkommen anderen Welt sein.“}

    \vspace #0.5

    \line { " " Freude und Gram, das sind Wege,   }
    \line { " " das große Leben zu verstehen.   }
    \line { " " Die Liebe schätzt sie beide gleichermaßen.  }

  }

\hspace #-6
  \override #`(baseline-skip . ,deCoupletBaselineSkip)
  \column {
    \line { " " Gram und Freude es ist gleich,  }
    \line { " " Gram und Freude es ist gleich,  }
    \line { " " wenn Liebe in ihnen herrscht.  }
    \line { " " Die Gerechtigkeit wird im Gram geschätzt  }
    \line { " " und das Gute in der Freude.   }
    \line { " " Empfangen wir sie   }
    \line { " " und gehen gemeinsam vorwärts.  }
    \line { " " Die Liebe schätzt sie beide gleichermaßen.  }

  }


}
