\version "2.24.2"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref175
  \tocItem \markup "Писмото – Pismoto "
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \major
      \time 4/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      \partial 8
      e'8 \repeat volta 2 {
        | % 2
        g'4.  f'8  e'8  d'8  e'8
        f'8 | % 3
        a'2  g'4  d'8  e'8 \break| % 4
        f'2  e'4 r8  e'8  | % 5
        \time 5/4  | % 5
        g'4.  f'8  e'8  d'8  e'4
        f'8  a'8 | % 6
        \time 4/4  \break| % 6
        c''4 (  b'8 [  a'8 ])   g'4
        ^\fermata  a'4  | % 7
        g'4  fis'4  a'4  c''8
        b'8 | % 8
        \time 3/4  | % 8
        a'8 ( [  b'8 ])  g'4.  e'8  \break| % 9
        \time 6/4  | % 9
        f'4  g'4  a'4.  b'8  c''4
        d''4 |
        \time 4/4  |
        e''2  d''4.  c''8 \break | % 11
        \time 3/4  | % 11
        b'8  a'8  b'8  e''4. |
      }

      \alternative {
        {
          % 12
          \time 4/4  % 12
          d''2  c''4.  e'8 |
        }
        {
          \time 4/4 d''2  c''4. \bar "|."
        }
      }
    }

    \addlyrics {
      Ко -- га -- то Лю -- бов -- та ца --
      ру -- ва, смут не ста -- ва. Ко --
      га -- то Мъ -- дрост -- та у -- прав
      -- ля -- ва, ре -- дът не се
      на -- ру -- ша -- ва. Ко -- га --
      то Ис -- ти -- на -- та гре -- е,
      пло -- дът цъф -- ти и зре -- е.
      Ко -- зре -- е.}
      \addlyrics {
        Ko -- ga -- to Lju -- bov -- ta ca --
        ru -- va, smut ne sta -- va. Ko --
        ga -- to Mă -- drost -- ta u -- prav
        -- lja -- va, re -- dăt ne se
        na -- ru -- ša -- va. Ko -- ga --
        to Is -- ti -- na -- ta gre -- e,
        plo -- dăt căf -- ti i zre -- e.
        Ko -- zre -- e.}

        \header {
          title = \titleFunc "Писмото" "Pismoto"
        }

        \midi{}

      } % score



      % include foreign translation(s) of the song
      \include "lyrics_de/175_pismoto_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
