\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \paper {
    print-all-headers = ##t
    print-page-number = ##t
    print-first-page-number = ##t

    % put page numbers on the bottom
    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
    \fill-line {
      ""
      \if \should-print-page-number \fromproperty #'page:page-number-string
    }
    evenFooterMarkup = \markup
    \fill-line {
      \if \should-print-page-number \fromproperty #'page:page-number-string
      ""
    }

    left-margin = 1.5\cm
    right-margin = 5.2\cm
    top-margin = 1.6\cm
    bottom-margin = 1.2\cm
    ragged-bottom = ##t % do not spread the staves to fill the whole vertical space

    % change distance between staves
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
  }



  \markup \fontsize  #+5.5 { \hspace #12.2 \fill-line \bold {"" "Wörterbuch der Musikbegriffe" ""} }



  \markup \fontsize  #+2  {
    \vspace #3.0
    \vspace #1.5 \override #'(baseline-skip . 2.2)

    \column {
      \line { \bold "a tempo"}
      \vspace #1.8
      \line { \bold"accelerando (accel.)" }
      \vspace #0.5

      \line { \bold"ad libitum" }

      \vspace #1.2
      \line { \bold"Adagio" }



      \vspace #0.7

      \line { \bold"Allegretto" }
      \vspace #0.5

      \line { \bold"Allegro" }
      \vspace #0.5

      \line { \bold"Allegro vivace"}
      \vspace #0.5

      \line { \bold"Andante"}
      \vspace #0.6

      \line { \bold"Andante sostenuto"}
      \vspace #0.5

      \line { \bold"Andantino"}
      \vspace #1.1

      \line { \bold"Animato"}
      \vspace #0.5

      \line { \bold"Attacca"}
      \vspace #2.0

      \line { \bold"cantabilе"}
      \vspace #0.5

      \line { \bold"D.C. (da capo) "}
      \vspace #0.5

      \line { \bold"D.C. al Fine"}
      \vspace #0.9

      \line { \bold"D.C. con ripetizione (-ni)"}
      \vspace #0.5

      \line { \bold"D.C. senza ripetizione (-ni)"}
      \vspace #0.5

      \line { \bold"D.S. al Fine (dal segno...) "}
      \vspace #0.5

      \line { \bold"e "}


      \vspace #1.0

      \line { \bold"espressivo"}

    }




    \hspace #1 \override #'(baseline-skip . 2.2)
    \column {
      \line {
        \justify {
           bedeutet, dass ab der entsprechend markierten Stelle innerhalb eines Musikstückes wieder im ursprünglichen Tempo gespielt werden soll.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          allmähliche Beschleunigung des Tempos.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          (abgekürzt ad lib.) ist lateinisch und bedeutet „nach Gutdünken“, „nach Belieben“, ohne fixiertes Tempo.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          langsam.
        }
      }
      \vspace #0.5
      \line {
        \justify {
           etwas rasch, gemäßigt schnell.

        }
      }
      \vspace #0.5
      \line {
        \justify {
           rasch, lebhaft, heiter, bewegt.


        }
      }
      \vspace #0.5
      \line {
        \justify {
          schneller als Allegro.

        }
      }
      \vspace #0.5
      \line {
        \justify {
            gehend; schrittmäßig;  etwas langsamer als Moderato.


        }
      }
      \vspace #0.5
      \line {
        \justify {
          etwas langsamer als Andante, sieh \italic"sustenuto."


        }
      }
      \vspace #0.5
      \line {
        \justify {
          etwas schneller (gelegentlich auch langsamer) als andante, jedenfalls ein wenig bewegter, akzentuierter.


        }
      }
      \vspace #0.5
      \line {
        \justify {
          bedeutet „belebt“, „beseelt“, „lebhaft“.


        }
      }
      \vspace #0.5
      \line {
        \justify {

          bedeutet, dass man als Musiker direkt mit dem nächsten Abschnitt des musikalischen Werkes fortfahren soll, ohne eine Pause zu machen.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          bedeutet, dass entsprechend markierte Stellen „gesanglich“ bzw. „ausdrucksvoll“ gespielt werden sollen.


        }
      }
      \vspace #0.5
      \line {
        \justify {
        vom Anfang an wiederholen.


        }
      }
      \vspace #0.5
      \line {
        \justify {
           vom Anfang (wiederholen) bis zum Ende, das durch das Wort Fine (ital. Ende) gekennzeichnet ist;
        }
      }
      \vspace #0.5
      \line {
        \justify {
           vom Anfang mit den Wiederholungen.
        }
      }
      \vspace #0.5
      \line {
        \justify {
           vom Anfang ohne Wiederholungen.

        }
      }
      \vspace #0.5
      \line {
        \justify {
          Vom Zeichen \musicglyph "scripts.segno" bis zum Wort Fine.

        }
      }
      \vspace #0.5
      \line {
        \justify {
          und zum Beispiel rit. e morendo - verlangsamend und ersterbend.

        }
      }
      \vspace #0.5
      \line {
        \justify {

          ital. für "ausdrucksvoll:" Spielanweisung, mit der verlangt wird, einer melodischen Linie besondere Ausdrucksstärke zu verleihen.
        }
      }
      \vspace #0.5
      \line {
        \justify {


        }
      }
      \vspace #0.5
      \line {
        \justify {


        }
      }
      \vspace #0.5
      \line {
        \justify {


        }
      }
    }
  }



  \markup \fontsize  #+2  {
    \vspace #1.5 \override #'(baseline-skip . 2.2)








    \column {


      \line { \bold"Fine"}
      \vspace #0.5

      \line { \bold"Grave "}
      \vspace #0.5

      \line { \bold"grazioso "}
      \vspace #0.5

      \line { \bold"Largamente "}
      \vspace #0.5
      \line { \bold "Larghetto"}
      \vspace #0.5
      \line { \bold"Largo" }
      \vspace #0.5

      \line { \bold"Lento" }

      \vspace #0.5
      \line { \bold"L’istesso tempo" }

      \vspace #0.5

      \line { \bold"Maestoso" }
      \vspace #0.5

      \line { \bold"Meno" }
      \vspace #0.5

      \line { \bold"Meno mosso"}
      \vspace #0.5

      \line { \bold"Moderato"}
      \vspace #0.5

      \line { \bold"ossia"}
      \vspace #2.5

      \line { \bold"Più"}
      \vspace #0.5

      \line { \bold"Più mosso"}
      \vspace #0.5

      \line { \bold"Poco"}
      \vspace #0.5

      \line { \bold"poco a poco"}
      \vspace #0.5

      \line { \bold"rallentando (rall.)"}
      \vspace #0.5

      \line { \bold"recitativo"}
      \vspace #0.5

      \line { \bold"risoluto"}
      \vspace #0.5

      \line { \bold"ritardando (rit.)"}
      \vspace #0.5

      \line { \bold"ritenuto (rit.)"}
      \vspace #0.5

      \line { \bold"rubato "}


      \vspace #0.5

      \line { \bold"senza"}
      \vspace #0.5


    }




    \hspace #1 \override #'(baseline-skip . 2.2)
    \column {
      \line {
        \justify {
          Ende, (sieh D.C. al Fine).
        }
      }
      \vspace #0.5
      \line {
        \justify {
          sehr langsam, buchstäblich schwer.
        }
      }
      \vspace #0.5
      \line {
        \justify {
           anmutig; mit Anmut.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          breit, langsam.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          langsam, aber nicht so langsam wie Largo.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          langsam, buchstäblich breit.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          langsam, biegsam, geschmeidig, locker.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          dasselbe Zeitmaß, im selben Tempo wie zuvor.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          feierlich, würdevoll, gemessen.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          weniger.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          langsamer, weniger bewegt.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          gemäßigt, mäßig schnell.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          (ital. ossia, „oder auch“, aus o sia, „oder es sei“) wird in einer Partitur eine Spielvariante oder Alternative über oder unter einem Notensystem benannt, die an Stelle des Originals gespielt werden kann.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          mehr.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          schneller, mehr bewegt.
        }
      }
      \vspace #0.5
      \line {
        \justify {

           etwas; ein wenig.

        }
      }
      \vspace #0.5
      \line {
        \justify {
           nach und nach; allmählich.
        }
      }
      \vspace #0.5
      \line {
        \justify {
           zögernd; allmählich langsamer.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          Rezitativ, sprechnder Gesang.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          entschlossen, kräftiger Vortrag.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          das Tempo verzögernd; langsamer werdend.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          im Tempo zurückgehalten, verzögert.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          frei im Vortrag.
        }
      }
      \vspace #0.5
      \line {
        \justify {
          ohne.
        }
      }

    }
  }

  \markup \fontsize  #+2  {
    \vspace #1.5 \override #'(baseline-skip . 2.2)








    \column {
      \line { \bold"senza misura"}
      \vspace #1.2

      \line { \bold"Sostenuto"}
      \vspace #0.5

      \line { \bold"Tempo di marcia"}
      \vspace #0.5

      \line { \bold"Tempo di valzer"}
      \vspace #0.5

      \line { \bold"Tempo I"}
      \vspace #0.5

      \line { \bold" Vivo (= Vivace)"}
    }


    \hspace #1 \override #'(baseline-skip . 2.2)
    \column {


      \line {
        \justify {
           ohne Metrum, also ohne Angabe einer rhythmischen Betonung.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          gehalten, Verzögerung des Tempos.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          Im Zeitmaß eines Marsches.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          Im Tempo eines Walzers.
        }
      }



      \vspace #0.5
      \line {
        \justify {
          Im anfänglichen Tempo.
        }
      }

      \vspace #0.5
      \line {
        \justify {
          lebendig, schnell.
        }
      }


    }

  }





} % bookpart

