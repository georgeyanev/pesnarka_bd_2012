\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref126
  \tocItem \markup "Отче наш, не ни ... – Otche nash, ne ni ... "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 6/4
      \tempoFunc "Andante sustenuto" 4 "76"
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
      c''4 b'4 ^\markup{ \bold {rit.} }  a'4
      b'8 ( [ cis''8 ) ] \break |
      d''2 r2 \repeat volta 2 {
        | % 11
        \key bes \major \time 6/4 | % 11
        \tempo "Lento" d'2 ( bes'2 )
        a'2 | % 12
        g'2.  \breathe fis'4  g'4  a'4 \break
        | % 13
        \time 4/4  | % 13
        c''2 bes'2 | % 14
        r4 bes'4 bes'4 c''4 | % 15
        es''2. d''4 | % 16
        \time 6/4  | % 16
        d''2 r4 ^\fermata c''4 bes'4
        g'4 \break | % 17
        \time 4/4  | % 17
        c''2 bes'2 | % 18
        r4  d'4  d'4  d'4 | % 19
        bes'2.  a'4 |
        g'1
      }
    }

    \addlyrics {
      Аз ще па -- зя то -- пли -- на --
      та на мо -- е -- то сър -- це, ко --
      я -- то вна -- ся Бо -- жи -- и -- те
      бла -- га във  мо -- я -- та ду
      -- ша. От -- че наш, не ни
      въ -- веж -- дай във из -- ку -- ше
      -- ни -- е, не ни въ -- веж -- дай
      във из -- ку -- ше -- ни -- е.}
      \addlyrics {
        Az shte pa -- zya to -- pli -- na --
        ta na mo -- e -- to sar -- tse, ko --
        ya -- to vna -- sya Bo -- zhi -- i -- te
        bla -- ga vav  mo -- ya -- ta du
        -- sha. Ot -- che nash, ne ni
        va -- vezh -- day vav iz -- ku -- she
        -- ni -- e, ne ni va -- vezh -- day
        vav iz -- ku -- she -- ni -- e.}

        \header {
          title = \titleFunc "Отче наш, не ни въвеждай в изкушение" "Otche nash, ne ni vavezhday v izkushenie"
        }

        \midi{}

      } % score

     \pageBreak

       \include "lyrics_de/216_otche_nash_ne_ni_vavezhday_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
