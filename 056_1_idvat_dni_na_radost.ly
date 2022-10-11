\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute  {
      \clef treble
      \key d \minor
      \time 3/4
      \autoBeamOff
      \tempoFunc "Andante" 4 "66"
      \repeat volta 2 {

        a'8. a'16 a'4. bes'8 | a'4 g'2 | g'8. g'16 g'4. a'8 | \break
        g'4 f'2 | e'8. e'16 e'4. f'8 | e'4 d'2 | \break
        e'8 f'8 g'8 bes'4 bes'8 | a'4 g'4 f'8. f'16 | e'4 d'2 |
      }
    }

    \addlyrics {
      И -- дват дни на Ра -- дост, и -- дват дни на
      Ра -- дост, и -- дват дни на Ра -- дост
      за о -- ни -- я, ко -- и -- то слу -- жат Бо -- гу.
    }

    \addlyrics {
      I -- dvat dni na Ra -- dost, i -- dvat dni na
      Ra -- dost, i -- dvat dni na Ra -- dost
      za o -- ni -- ya, ko -- i -- to slu -- zhat Bo -- gu.
    }


    \header {
      title = \titleFunc "  Идват дни на радост" "Idvat dni na radost"
    }

    \midi{}

  } % score

  \markup \empty-three

  % include foreign translation(s) of the song
  \include "lyrics_de/056_1_idvat_dni_na_radost_lyrics_de.ly"

} % bookpart
