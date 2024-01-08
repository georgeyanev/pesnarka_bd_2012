\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref181
  \tocItem \markup "Пролетна песен"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 2/4
      \tempoFunc "Allegretto" 4 "104"
      \autoBeamOff
      e'4  e'8.  f'16 | % 2
      g'4  g'4 | % 3
      c''4 b'8.  a'16 | % 4
      a'4  a'8 ( [  f'8 ) ] | \break % 5
      d'8.  e'16  f'8. ( [  g'16 ) ] | % 6
      a'4 (  g'4 ) | % 7
      e'2  | % 8
      e'4  e'8.  f'16 | % 9
      g'4  g'8. c''16 \break |
      e''4 d''4 | % 11
      c''4. b'8 | % 12
      c''8. ( [ b'16 ) ] c''8. ( [
      a'16 ) ] | % 13
      g'4  g'4 | % 14
      a'16 b'16 c''16 d''16
      e''8 d''8  | % 15
      c''4 c''4  | % 16
      g'4.  e'8 | % 17
      g'8  f'8  e'8  d'8 | % 18
      c'2
      \bar ".|:"
      | % 19
      g'4  g'4 \break |
      g'8 c''8 c''8 b'8 | % 21
      f'4  f'4 | % 22
      f'8 b'8 b'8  a'8 | % 23
      e'4  e'4 \break | % 24
      e'8  a'8  a'8  g'8 | % 25
      d'16  e'16  f'16  g'16
      c''8 b'8 | % 26
      e''8 d''8 c''8 b'8 | % 27
      c''2 \break | % 28
      c''4. b'8 | % 29
      c''8. b'16 c''8.  a'16 |
      g'2 | % 31
      a'16 b'16 c''16 d''16
      e''8 d''8 \break | % 32
      c''4 c''4 | % 33
      g'4.  e'8 | % 34
      g'8  f'8  e'8  d'8 | % 35
      c'2
      \bar ":|."
    }

    \addlyrics {
      Е
      -- то при -- сти -- га чуд -- на --
      та про -- лет, __  Слън -- це из
      -- гря -- ва. Всич -- ко се
      бу -- ди, рас -- те, жи -- ве -- е и __
      се __  рад -- ва, и "бла-" -- "го-" --
      "да-" -- ри на Бо -- га. Про -- лет,
      про -- лет е до -- шла. Пти -- чен
      -- це в~не -- бе -- то слад -- ко
      чу -- ру -- ли -- ка, Слън -- це -- то
      при -- вет -- но це -- лий мир об --
      ли -- ва с~ра -- дост и лю -- бов.
      Тър -- жест -- ву -- ва це -- лий
      мир и бла -- го -- да -- ри на Бо
      -- га. Про -- лет, про -- лет е до --
      шла.}

      \header {
        title = \titleFunc "Пролетна песен" "Proletna pesen"
      }

      \midi{}

    } % score

    \markup \dcr-two "D.C.""con ripetizione" #4.5

  } % bookpart

  % Più mosso
  %
