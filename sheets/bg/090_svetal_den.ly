\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref090
  \tocItem \markup "Светъл ден"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \absolute  {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "88"
      \autoBeamOff

      g8 b d'4 | g8 b d'4 | g'4 g' | g'2 |   \break

      g'8 a'8 b'4 |  g'8 a'8 b'4 | d''4 d''4 | d''2 | \break

      d''8 c'' b'4 | d''8 c'' b'4 |


      b'4 a'4| \tempo "                Fine" g'2



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
      ден, ден, ден.
      Све -- тъл ден, све -- тъл ден,
      све -- тъл ден, Бо -- жи ден.
      Све -- тъл ден, све -- тъл ден,
      све -- тъл ден, Бо -- жи ден.

    }


    \header {
      title = \titleFunc "Светъл ден" "Svetăl den"
    }

    \midi{}

  } % score


  \markup \dc-two "D.C. al Fine" " senza ripetizione"
} % bookpart
