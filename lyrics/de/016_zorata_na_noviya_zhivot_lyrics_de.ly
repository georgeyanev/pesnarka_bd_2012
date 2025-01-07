\version "2.24.4"

\markup \fill-line { \fontsize #deTitleFontSize "Die Morgenröte des neuen Lebens" }
\markup \null
\markup \null
\markup \abs-fontsize #11 \override #`(baseline-skip . ,bgCoupletBaselineSkip) {
  \fill-line {
    \hspace #0.1
    \column {
      \line {
        \bold "1."
        \column {
          "Die wunderbare Morgenröte bricht an,"
          "die Morgenröte des hellen, neuen "
          "Lebens, mit Herrlichkeit bescheint"
          "sie unsere ruhende Bundeslade."
        }
      }
      \vspace #1
      \line{ \italic"    Refrain:"}
      %\vspace #0.3
      \line {
        "   "
        \column {
          "In diesem neuen, leuchtenden Leben, (2)"
          "ein Leben der Liebe,"
          "in diesem neuen, leuchtenden Leben,"
          "ein Leben der Güte,"
          "in diesem neuen, leuchtenden Leben,"
          "ein Leben der Freude."
        }
      }
      \vspace #1
      \line {
        \bold "2."
        \column {
          "Und die Vögel erfüllen"
          "die Luft mit Begeisterung"
          "und süßen Liedern im Chor,"
          "damit sie die Harmonie ergänzen"
          "im großen himmlischen Hof."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

    }
    \hspace #0.1
    % adds horizontal spacing between columns
    \column {
      \line {
        \bold "3."
        \column {
          "Es flimmert" 
          "die leichtbeschwingtе Morgenröte"
          "und erweckt unsere Seelen;"
          "wie die liebe, liebevolle Mutter"
          "lädt sie jeden ein: „Stehe auf!“"
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

      \vspace #0.5
      \line {
        \bold "4."
        \column {
          "Strahlen aus Liebe flößen"
          "in unsere Brust lebendige Wärme ein,"
          "mit süßem Glauben erheben sie "
          "uns in Stärke und Licht [videlina]."
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

      \vspace #0.5
      \line {
        \bold "5."
        \column {
          "Oh, diese Strahlen kommen von Gott,"
          "sie erfüllen unsere Herzen"
          "und flüstern uns süß zu, wie Er ruft:"
          "„Kommt, meine Kinder!“"
        }
      }
      \vspace #1
      \line {
        \bold " "
        \column {
          \italic"  Refrain ..."
        }
      }

      % adds vertical spacing between verses
    }\hspace #0.1
  }
}