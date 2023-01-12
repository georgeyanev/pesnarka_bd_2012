\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

 \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \major
      \time 6/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff

      a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |

      \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "      Più Mosso"

      e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break |

      e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."


    }

    \addlyrics {
      Ве -- чер,
      су -- трин о -- ти -- де, дой -- де, ве -- чер,
      су -- трин о -- ти -- де, дой -- де. О -- ти --
      де, дой -- де, о -- ти -- де, дой -- де, о -- ти
      -- де, дой -- де, дой -- де.}
      \addlyrics {
        Ve -- cher,
        su -- trin o -- ti -- de, doy -- de, ve -- cher,
        su -- trin o -- ti -- de, doy -- de. O -- ti --
        de, doy -- de, o -- ti -- de, doy -- de, o -- ti
        -- de, doy -- de, doy -- de.}
        \header {
          title = \titleFunc "Вечер сутрин" "Vecher, sutrin"
        }

        \midi{}

      } % score

      \markup \dc-two "D.C.""con repitione"

      % include foreign translation(s) of the song
      \include "lyrics_de/083_2_vecher_sutrin_lyrics_de.ly"

  } % bookpart
