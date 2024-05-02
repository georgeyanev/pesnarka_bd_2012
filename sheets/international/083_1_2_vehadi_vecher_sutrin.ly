\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref083_1
  \tocItem \markup "Вехади – Vehadi"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Adagio, ad libitum" 4 "56"
      \override Staff.BarLine.gap = 0.5
      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines

      \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral  a' d''4^\mp   e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2   \break

      \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2 \break

      a4^\pp  bes2 a2. a4  bes2 a2. a4  bes2 a2. \bar ":|." \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
    \addlyrics {
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di,
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di.
    }
    \header {
      title = \titleFunc "Вехади "" Vehadi"
    }

    \midi{}

  } % score
  %

  \markup \empty-two

  \include "include/bookpart-paper.ily"
  \label #'ref083_2
  \tocItem \markup "Вечер сутрин – Večer sutrin"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key a \major
      \time 6/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff

      a4 cis' e' a'2 gis'4 |  \time 5/4  b'4. fis'8 fis'4 e'2 | \time 6/4  fis'4 e' d' cis'2 b4 \break |

      \time 5/4  e'4. b8 b4 a2 | \bar ":|.|:" \time 8/8 \tempo  "   Più Mosso"

      e'4. fis'4 d'4. | e'4. fis'4 ~ fis'4. | e'4. fis'4 d'4. \break |

      e'4. fis'4 ~ fis'4. |e'4. fis'4 d'4. | cis'4. e'4 ~ e'4. | b4. ~ b4 ~ b4. | a4. ~ a4 ~ a4. | \bar ":|."


    }

    \addlyrics {
      Ве -- чер,
      сут -- рин о -- ти -- де, дой -- де, ве -- чер,
      сут -- рин о -- ти -- де, дой -- де. О -- ти --
      де, дой -- де, __ о -- ти -- де, дой -- де, __ о -- ти
      -- де, дой -- де, __ дой -- де. __}

      \addlyrics {
        Ve -- čer,
        sut -- rin o -- ti -- de, doj -- de, ve -- čer,
        sut -- rin o -- ti -- de, doj -- de. O -- ti --
        de, doj -- de, __ o -- ti -- de, doj -- de, __ o -- ti
        -- de, doj -- de, __ doj -- de. __}
        \header {
          title = \titleFunc "Вечер сутрин "" Večer sutrin"
        }

        \midi{}

      } % score

      \markup \empty-one
      \markup \dc-two "D.C." "con ripetizioni"


      \markup \empty-two
      % include foreign translation(s) of the song
      \include "../../lyrics/de/083_2_vecher_sutrin_lyrics_de.ly"



    } % bookpart
