\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key d \minor
      \tempoFunc "Addagio, ad libitum" 4 "56"

      \autoBeamOff
      \omit Score.TimeSignature
      \cadenzaOn % allows custom bar lines


      \repeat volta 2 {
        \slurDown a'4^\p bes'8 [ ( a'] gis' [a'] bes'2 ) \slurNeutral a' \bar "!"  \breathe  d''4^\mp  e''8 ( [d''] cis'' [d''] bes' [a'] c''16 [bes' a' gis'!] ) a'2 \bar "!" \breathe \break |

        \time 10/4 g'8 ([ f'] e' [f'] g'4 a' ) f'4. ( e'8 g'16 [f' e' f'] ) d'2
        \override BreathingSign.text = \markup {
          \musicglyph "scripts.caesura.straight"
        }
        \breathe
        a4^\pp \bar "!" \break |


        bes2 a2 a4 \bar "!"  bes2 a a4  \bar "!"  bes2 a r4
      } \break
    }

    \addlyrics {
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди,
      Ве -- ха -- ди, Ве -- ха -- ди, Ве -- ха -- ди.
    }
    \addlyrics {
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di,
      Ve -- ha -- di, Ve -- ha -- di, Ve -- ha -- di.}
      \header {
        title = \titleFunc "Вехади" "Vehadi"
      }

      \midi{}

    } % score
%    

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
