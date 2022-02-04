\version "2.20.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andandtinio" "4" "69"
      \partial 4
      \autoBeamOff

      \repeat volta 2 {
        b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break |

        g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4^\markup { \concat {"              (" \fermata ")"}} |  g'2
        \break
      }
    }

    \addlyrics {
      Из -- гря --
      ва Слън -- це -- то, пра -- ща Свет -- ли -- на,
      но -- си Ра -- дост за Жи -- во -- та тя.
    }

    \addlyrics {
      Iz -- grya --
      va Slan -- tse -- to, pra -- shta Svet -- li -- na,
      no -- si Ra -- dost za Zhi -- vo -- ta tya.
    }
    \header {
      title = \titleFunc "Изгрява слънцето" "Izgryava slantzeto"
    }

    \midi{}

  } % score
  
  \markup \dc-two-italic "attacca „Сила жива, изворна/Sila zhiva, izvorna“"""
\markup \empty-three
  % include foreign translation(s) of the song
  \include "lyrics_de/071_1_izgryava_slunzeto_lyrics_de.ly"

} % bookpart
