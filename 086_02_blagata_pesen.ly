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
      \tempoFunc "Moderato" "4" "72"

      \partial 4
      \autoBeamOff
      b8. c'16 | d'4 g' fis'8. e'16 | \time 2/4  e'4. e'8 | \time 3/4  e'4 c' e'8. e'16 \break |

      d'2 b'8. b'16 | c''4 b' b'8. a'16 | a'4 g'2 \break |

      \time 4/4  b'8. b'16 c''8. c''16 b'2 | d''4 c'' b' a' | a'2 g' \break |

      \bar ".|:" \time 6/4  fis'4 fis' fis'2 e' | e'4 e' e'2 d' |  \time 4/4  b'4 b' c'' a' | a'2 g' \bar ":|."
    }

    \addlyrics {
      Ти съ -- зна -- вай, ти лю -- би,
      без -- спир -- но сей, гра -- ди и в~Жи -- во --
      та всич -- ко да -- вай. Та -- зи Ис -- ти --
      на, Бо -- га, ти по -- зна -- вай. Ти по -- зна
      -- вай, ти по -- зна -- вай, Бо -- га ти по --
      зна -- вай.
    }

    \addlyrics {
      Ti sa -- zna -- vay, ti lyu -- bi,
      bez -- spir -- no sey, gra -- di i v~Zhi -- vo --
      ta vsich -- ko da -- vay. Ta -- zi Is -- ti --
      na, Bo -- ga, ti po -- zna -- vay. Ti po -- zna
      -- vay, ti po -- zna -- vay, Bo -- ga ti po --
      zna -- vay.
    }

    \header {
      title = \titleFunc "Благата песен" "Blagata pesen"
    }

    \midi{}

  } % score
  
  \markup \dc-two "D.C. al Fine „Кажи ми ти Истината/Kazhi mi ti istinata“" "senza ripetizione"
  \markup \empty-three


  % include foreign translation(s) of the song
  \include "lyrics_de/086_02_Blagata_pesen_lyrics_de.ly"

} % bookpart
