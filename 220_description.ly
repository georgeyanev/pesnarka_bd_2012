\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"

  \markup \fontsize  #+5.5 { \fill-line \bold {"" "Anmerkungen zu den Liedern" ""} }

  \markuplist \fontsize  #+2  {
    \override #'(padding . 1.5)
    \override #'(baseline-skip . 2.2)
    \table #'(-1 0) {
      1. \justify {
        \vspace #1.5 \bold "Зората на Новия живот – Zorata na Noviya zhivot."
        Musik des Meisters, Text von einem Schüler nach den Ideen des Meisters. In der Ausgabe von 1949
        wurde in der ersten Strophe das Wort Leben statt Bundeslade verwendet.
      }

      2.  \justify {
        \vspace #0.7 \bold "Излязъл е сеяч – Izlyazal e seyach."
        Musik des Meisters, Text von einem Schüler nach den Ideen des Meisters.
      }

      3.  \justify {
        \vspace #0.7 \bold "Братство единство – Bratstvo Edinstvo. "
        Musik des Meisters, Text von einem Schüler nach den Ideen des Meisters.
      }

      4.  \justify {
        \vspace #0.7 \hspace #-6.7 \bold "Ще се развеселя – Shte se razveselya."
        Musik des Meisters, Text Jes. 61,10.

      }

      6.  \justify {
        \vspace #0.7 \bold "Изгрява вече ден тържествен – Izgryava veche den tarzhestven. "
        Musik des Meisters, Text von einem Schüler nach den Ideen des Meisters.
      }

      7.  \justify {
        \vspace #0.7 \hspace #-1.5 \bold "Благославяй – Blagoslavyay. "
        Musik und Text des Meisters nach dem Psalm 103.
      }
      8.  \justify {
        \vspace #0.7 \bold "Събуди се братко мили – Sabudi se bratko mili."
        Musik des Meisters, Text von einem Schüler nach den Ideen des Meisters.
      }
      9.  \justify {
        \vspace #0.7 \bold "Любовта е извор – Lyubovta e izvor. "
        Musik des Meisters, Text von einem Schüler nach den Ideen des Meisters. In den Notizen von Bojan Boev wurde das Lied \italic "Lied der Liebe" betitelt.
      }
      10.  \justify {
        \vspace #0.7 \hspace #-20.7 \bold "Стани, стани – Stani, stani."
        Musik und Text des Meisters.
      }


    }
  }









} % bookpart


