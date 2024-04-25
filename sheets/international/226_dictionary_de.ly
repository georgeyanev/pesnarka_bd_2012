\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  #(define blineskip221 2.3)
  \include "include/bookpart-paper.ily"
  \label #'ref221
  \tocItem \markup "Wörterbuch der Musikbegriffe"

  \markup \abs-fontsize #12 { \fill-line \bold {"WÖRTERBUCH DER MUSIKBEGRIFFE"} }

  \markuplist \abs-fontsize #10 {
    \override #'(padding . 2) % horizontal distance
    \override #'(baseline-skip . 3.6) % vertical distance
    \override #'(line-width . 58)
    \table #'(1 -1) {
      \line {"                                            "} \line {"                "}

      \line \bold {a tempo} \override #`(baseline-skip . ,blineskip221)
      \justify {bedeutet, dass ab der entsprechend markierten Stelle innerhalb eines Musikstückes wieder im ursprünglichen Tempo gespielt werden soll.}

      \line \bold {accelerando (accel.)} \override #`(baseline-skip . ,blineskip221)
      \justify {allmähliche Beschleunigung des Tempos.}

      \line \bold {ad libitum} \override #`(baseline-skip . ,blineskip221)
      \justify {(abgekürzt ad lib.) ist lateinisch und bedeutet „nach Gutdünken“, „nach Belieben“, ohne fixiertes Tempo.}

      \line \bold {Adagio} \override #`(baseline-skip . ,blineskip221)
      \justify {langsam.}

      \line \bold {Allegretto} \override #`(baseline-skip . ,blineskip221)
      \justify {etwas rasch, gemäßigt schnell.}

      \line \bold {Allegro} \override #`(baseline-skip . ,blineskip221)
      \justify {rasch, lebhaft, heiter, bewegt.}

      \line \bold {Allegro vivace} \override #`(baseline-skip . ,blineskip221)
      \justify {schneller als Allegro.}

      \line \bold {Andante} \override #`(baseline-skip . ,blineskip221)
      \justify {gehend; schrittmäßig;  etwas langsamer als Moderato.}

      \line \bold {Andante sostenuto} \override #`(baseline-skip . ,blineskip221)
      \justify {etwas langsamer als Andante, sieh \italic"sustenuto."}

      \line \bold {Andantino} \override #`(baseline-skip . ,blineskip221)
      \justify {etwas schneller (gelegentlich auch langsamer) als andante, jedenfalls ein wenig bewegter, akzentuierter.}

      \line \bold {Animato} \override #`(baseline-skip . ,blineskip221)
      \justify {bedeutet „belebt“, „beseelt“, „lebhaft“.}

      \line \bold {Attacca} \override #`(baseline-skip . ,blineskip221)
      \justify {bedeutet, dass man als Musiker direkt mit dem nächsten Abschnitt des musikalischen Werkes fortfahren soll, ohne eine Pause zu machen.}

      \line \bold {cantabilе} \override #`(baseline-skip . ,blineskip221)
      \justify {bedeutet, dass entsprechend markierte Stellen „gesanglich“ bzw. „ausdrucksvoll“ gespielt werden sollen.}

      \line \bold {D.C. (da capo)} \override #`(baseline-skip . ,blineskip221)
      \justify {vom Anfang an wiederholen.}

      \line \bold {D.C. al Fine} \override #`(baseline-skip . ,blineskip221)
      \justify {vom Anfang (wiederholen) bis zum Ende, das durch das Wort Fine (ital. Ende) gekennzeichnet ist;}

      \line \bold {D.C. con ripetizione (-ni)} \override #`(baseline-skip . ,blineskip221)
      \justify {vom Anfang mit den Wiederholungen.}

      \line \bold {D.C. senza ripetizione (-ni)} \override #`(baseline-skip . ,blineskip221)
      \justify {vom Anfang ohne Wiederholungen.}

      \line \bold {D.S. al Fine (dal segno...)} \override #`(baseline-skip . ,blineskip221)
      \justify {Vom Zeichen \musicglyph "scripts.segno" bis zum Wort Fine.}

      \line \bold {e} \override #`(baseline-skip . ,blineskip221)
      \justify {und zum Beispiel rit. e morendo – verlangsamend und ersterbend.}

      \line \bold {espressivo} \override #`(baseline-skip . ,blineskip221)
      \justify {ital. für "ausdrucksvoll:" Spielanweisung, mit der verlangt wird, einer melodischen Linie besondere Ausdrucksstärke zu verleihen.}

      \line \bold {Fine} \override #`(baseline-skip . ,blineskip221)
      \justify {Ende, (sieh D.C. al Fine).}

      \line \bold {Grave} \override #`(baseline-skip . ,blineskip221)
      \justify {sehr langsam, buchstäblich schwer.}

      \line \bold {grazioso} \override #`(baseline-skip . ,blineskip221)
      \justify {anmutig; mit Anmut.}

      \line \bold {Largamente} \override #`(baseline-skip . ,blineskip221)
      \justify {breit, langsam.}

      \line \bold {Larghetto} \override #`(baseline-skip . ,blineskip221)
      \justify {langsam, aber nicht so langsam wie Largo.}

      \line \bold {Largo} \override #`(baseline-skip . ,blineskip221)
      \justify {langsam, buchstäblich breit.}

      \line \bold {Lento} \override #`(baseline-skip . ,blineskip221)
      \justify { langsam, biegsam, geschmeidig, locker.}

      \line \bold {L’istesso tempo} \override #`(baseline-skip . ,blineskip221)
      \justify { dasselbe Zeitmaß, im selben Tempo wie zuvor.}

      \line \bold {Maestoso} \override #`(baseline-skip . ,blineskip221)
      \justify { feierlich, würdevoll, gemessen.}

      \line \bold {Meno} \override #`(baseline-skip . ,blineskip221)
      \justify { weniger.}

      \line \bold {Meno mosso} \override #`(baseline-skip . ,blineskip221)
      \justify {langsamer, weniger bewegt.}

      \line \bold {Moderato} \override #`(baseline-skip . ,blineskip221)
      \justify { gemäßigt, mäßig schnell.}

      \line \bold {ossia} \override #`(baseline-skip . ,blineskip221)
      \justify { (ital. ossia, „oder auch“, aus o sia, „oder es sei“) wird in einer Partitur eine Spielvariante oder Alternative über oder unter einem Notensystem benannt, die an Stelle des Originals gespielt werden kann.}

      \line \bold {Più} \override #`(baseline-skip . ,blineskip221)
      \justify { mehr.}

      \line \bold {Più mosso} \override #`(baseline-skip . ,blineskip221)
      \justify { schneller, mehr bewegt.}

      \line \bold {Poco} \override #`(baseline-skip . ,blineskip221)
      \justify {etwas; ein wenig.}

      \line \bold {poco a poco} \override #`(baseline-skip . ,blineskip221)
      \justify {nach und nach; allmählich.}

      \line \bold {rallentando (rall.)} \override #`(baseline-skip . ,blineskip221)
      \justify { zögernd; allmählich langsamer.}

      \line \bold {recitativo} \override #`(baseline-skip . ,blineskip221)
      \justify { Rezitativ, sprechnder Gesang.}

      \line \bold {risoluto} \override #`(baseline-skip . ,blineskip221)
      \justify { entschlossen, kräftiger Vortrag.}

      \line \bold {ritardando (rit.)} \override #`(baseline-skip . ,blineskip221)
      \justify { das Tempo verzögernd; langsamer werdend.}

      \line \bold {ritenuto (rit.)} \override #`(baseline-skip . ,blineskip221)
      \justify { im Tempo zurückgehalten, verzögert.}

      \line \bold {rubato} \override #`(baseline-skip . ,blineskip221)
      \justify { frei im Vortrag.}

      \line \bold {senza} \override #`(baseline-skip . ,blineskip221)
      \justify {ohne.}

      \line \bold {senza misura} \override #`(baseline-skip . ,blineskip221)
      \justify {ohne Metrum, also ohne Angabe einer rhythmischen Betonung.}

      \line \bold {Sostenuto} \override #`(baseline-skip . ,blineskip221)
      \justify {gehalten, Verzögerung des Tempos.}

      \line \bold {Tempo di marcia} \override #`(baseline-skip . ,blineskip221)
      \justify {Im Zeitmaß eines Marsches.}

      \line \bold {Tempo di valzer} \override #`(baseline-skip . ,blineskip221)
      \justify {Im Tempo eines Walzers.}

      \line \bold {Tempo I} \override #`(baseline-skip . ,blineskip221)
      \justify {Im anfänglichen Tempo.}

      \line \bold {Vivo (= Vivace)} \override #`(baseline-skip . ,blineskip221)
      \justify {lebendig, schnell.}
    }
  }
} % bookpart

