\version "2.24.2"

\include "include/globals.ily"

\bookpart {
  \label #'ref132
  \tocItem \markup "Правда – Pravda"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andantino" 4 "76"
      \autoBeamOff
      c'4  g2 | % 2
      e'4  c'2 | % 3
      a'2. | % 4
      g'2 r8  e'8 | % 5
      e'4.  e'8  e'8  e'8 \break | % 6
      f'2  d'4 | % 7
      c'4 (  e'4  g'8 ) --   c''8 -- | % 8
      \time 4/4  | % 8
      e''4. (  b'8  c''8 [  b'8 ] )
      c''8  g'8  | % 9
      a'4  e'8.  e'16  g'4.  g'8
      \break |
      g'8  g'8  a'8  a'8  d'4
      g'8.  g'16 |  % 11
      \time 3/4  | % 11
      e'2 r8  c''8 | % 12
      \time 4/4  | % 12
      e''4. (  b'8  c''8 [  b'8 ) ]
      c''8  g'8 \break | % 13
      a'4  e'8.  e'16  g'4.  g'8 | % 14
      g'8  g'8  a'8  a'8  d'4
      g'8.  g'16 | \break  % 15
      \time 3/4  | % 15
      c'4 (  e'4  g'4 )  | % 16
      \tempo "Rubato" c''4. ( b'16 -- [
      c''16 -- ]
      \times 4/5  {
        d''16 -- [  b'16 --  c''16 --
        a'16 --  b'16 ) -- ]
      }
      | % 17
      g'2. \break | % 18
      \time 2/4  | % 18
      a'4 ( ~  a'16 [  b'16  c''16
      d''16 ] | % 19
      \time 3/4  | % 19
      e''2  d''4 ) |
      c''2. \bar "|."
    }

    \addlyrics {
      Прав -- да, Прав -- да, Прав -- да,
      що вна -- сяш Сво -- бо -- да в~у
      -- ма. __   Кра -- си --
      ва и мощ -- на си ти и раз --
      пре -- де -- ляш всич -- ко в~све --
      та; кра -- си --   ва и
      мощ -- на си ти и раз -- пре -- де
      -- ляш всич -- ко в~све -- та. __
      Прав --
      да, Прав --
      да!}

        \header {
          title = \titleFunc "Правда" "Pravda"
        }

        \midi{}

      } % score
      \pageBreak
      % include foreign translation(s) of the song
      

    } % bookpart
