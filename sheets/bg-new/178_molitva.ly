\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref178
  \tocItem \markup "Молитва (Чуй, Господи)"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 3/4
      \tempoFunc "Andantino" 4 "72"
      \autoBeamOff

      b'2. | % 2
      b'4.  b'8  b'4 ~ | % 3
      b'2 ^\fermata  b'4 | % 4
      g''2  fis''4 | % 5
      e''2  b'4 | % 6
      c''2. | % 7
      c''2. \break | % 8
      c''4  c''4  e''4 | % 9
      b'2. |
      b'2. | % 11
      r8  g'8  a'8  a'8  a'8  a'8 | % 12
      b'2. \break | % 13
      fis'4  fis'4  c''4 | % 14
      \time 4/4  | % 14
      b'4 ^\fermata  b'2  b'8 ( [
      c''8 ) ] | % 15
      c''8 ( [  d''8 ) ]  d''8 ( [
      e''8 ) ]  e''8 ( [  fis''8 ) ]  fis''8 (
      [  g''8 ) ] \break | % 16
      a''2  c''4.  b'8 | % 17
      \time 5/4  | % 17
      b'8  b'8  b'4  b'8  b'8
      e''2 \break | % 18
      e''4.  b'8  b'2. | % 19
      g''4.  e''8  e''2. |
      \time 3/4  |
      b'2 \acciaccatura {  c''8 ( }  b'4 ) | % 21
      b'2 r8  fis'8 \break | % 22
      g'4  g'4
      \times 2/3  {
        a'8   a'8  a'8
      }
      | % 23
      fis'4  fis'4 r8  g'8 | % 24
      \time 4/4  | % 24
      e'4  e'2 r8  e'8 \break | % 25
      \time 6/4  | % 25
      e'2 e'1 | % 26
      e''4
      \tupletUp
      \times 2/3  {
        b'8   b'8  b'8
      }
      c''2  b'4
      \times 2/3  {
        b'8  b'8  b'8
      }
      \break | % 27
      g''2 ~  g''4.  e''8  e''4
      e''4 ^\fermata | % 28
      \time 3/4  | % 28
      b'2 \acciaccatura {  c''8 }  b'4 | % 29
      b'2. ~ |
      b'4 r4 r4 \bar "|."
    }


    \addlyrics {
      Чуй, Гос -- по -- ди, __  към Те --
      бе аз от -- пра -- вям мой -- та
      мо -- лит -- ва. Да се ос -- во --
      бо -- ди мо -- е -- то тя -- ло от __
      всич -- ки -- те __  не
      -- прав -- ди, ко -- и -- то но --
      ся в~све -- та. Гос -- по -- ди,
      Гос -- по -- ди, Гос -- по -- ди,
      да дой -- де Тво -- я -- та ми --
      лост над ме -- не, над ме -- не!
      Аз, кой -- то не зна -- я как да
      жи -- ве -- я о -- ще, Гос --
      по -- ди. __}

      \header {
        title = \titleFunc #'ref_desc_14 "Молитва" "Molitva"
      }


      \midi{}

    } % score

  }