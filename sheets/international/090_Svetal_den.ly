\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
    \label #'ref090
  \tocItem \markup "Светъл ден – Svetăl den "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

        g8 b d'4 | g8 b d'4 | g'4 g' | g'2 |   \break

        g'8 a'8 b'4 |  g'8 a'8 b'4 | d''4 d''4 | d''2 | \break

        d''8 c'' b'4 | d''8 c'' b'4 | b'8 b'8 a'8 a'8 | \tempo "                    Fine" g'2
      \bar ":|." \break

      \time 3/4


      \tempoFunc "Meno mosso" 4 "66"


      g'2 a'4 | b'2. | c''2 b'4 | a'2. | a'2 b'4 | \break

      c''2. | d''2 c''4 | b'2.    \bar ".|:"
        g''2 d''4 | b'2. \break

        c''2 b'4 | a'2. | g'2 a'4 | b'2. | a'2 g'4 | g'2.|
      \bar ":|." \break

    }

    \addlyrics {
      Све -- тъл ден, све  -- тъл ден,
      ден, ден, ден.
      Ве -- сел ден, ве -- сел ден,
      ден, ден, ден.
      Бо -- жи ден, Бо -- жи ден,
      све -- тъл Бо -- жи ден.
      Све -- тъл ден, све -- тъл ден,
      све -- тъл ден, Бо -- жи ден.
      Све -- тъл ден, све -- тъл ден,
      све -- тъл ден, Бо -- жи ден.

    }
    \addlyrics {
      Sve -- tăl den, sve  -- tăl den,
      den, den, den.
      Ve -- sel den, ve -- sel den,
      den, den, den.
      Bo -- ži den, Bo -- ži den,
      sve -- tăl Bo -- ži den.
      Sve -- tăl den, sve -- tăl den,
      sve -- tăl den, Bo -- ži den.
      Sve -- tăl den, sve -- tăl den,
      sve -- tăl den, Bo -- ži den.

    }

    \header {
      title = \titleFunc "Светъл ден" "Svetăl den"
    }

    \midi{}

  } % score


\markup \dc-two "D.C. al Fine" " senza ripetizione"

  


  % include foreign translation(s) of the song
  \include "../../lyrics/de/090_svetal_den_lyrics_de.ly"

} % bookpart
