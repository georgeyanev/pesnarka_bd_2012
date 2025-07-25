\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref216
  \tocItem \markup "Отче наш, не ни въвеждай в изкушение"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 6/4
      \tempoFunc "Andante sostennuto" 4 "76"
      \autoBeamOff
      \partial 2
      d'4  d'4 | % 2
      b'2  a'2  g'4  fis'4 | % 3
      a'2.  g'4 r4  g'4 \break | % 4
      \time 4/4  | % 4
      fis'4  d'4  g'4  a'4 | % 5
      \time 6/4  | % 5
      b'2 r4 r8 b'8 d''4 b'4 | % 6
      \time 5/4  | % 6
      e''2  a'2 r4 \break | % 7
      g'2  e'8  fis'8  g'4  a'4 | % 8
      \time 3/4  | % 8
      b'2 b'8 ( [ c''8 ) ] | % 9
      \time 4/4  | % 9
      c''4 \tempo"rit." b'4 a'4
      b'8 ( [ cis''8 ) ]  |
      d''2 r2   \bar ".|:-||"
      | % 11
      \key g \minor \time 6/4 \break | % 11
      \tempo "Lento" d'2 ( bes'2 )
      a'2 | % 12
      g'2.  \breathe fis'4  g'4  a'4
      | % 13
      \time 4/4  | % 13
      c''2 bes'2 \break | % 14
      r4 bes'4 bes'4 c''4 | % 15
      es''2. d''4 | % 16
      \time 6/4  | % 16
      d''2 r4 ^\fermata c''4 bes'4
      g'4 \break | % 17
      \time 4/4  | % 17
      c''2 bes'2 | % 18
      r4  d'4  d'4  d'4 | % 19
      bes'2.  a'4 |
      g'2 \fermata  \bar ":|."

    }

    \addlyrics {
      Аз ще па -- зя топ -- ли -- на --
      та на мо -- е -- то сър -- це, ко --
      я -- то вна -- ся Бо -- жи -- и -- те
      бла -- га във  мо -- я -- та ду
      -- ша. От -- че наш, не ни
      въ -- веж -- дай във из -- ку -- ше
      -- ни -- е, не ни въ -- веж -- дай
      във из -- ку -- ше -- ни -- е.}

      \header {
        title = \titleFunc #'ref_desc_17 "Отче наш, не ни въвеждай в изкушение" "Otče naš, ne ni văveždaj v izkušenie"
      }

      \midi{}

    } % score

  } % bookpart

  % Più mosso
  %
