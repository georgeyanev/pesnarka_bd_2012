\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref192
  \tocItem \markup "     Втори Божествен ден – Vtori Bozhestven den"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key c \minor
      \time 4/4
      \tempoFunc "Lento maestoso" 4 "100"
      \autoBeamOff
      \partial 2 r4 d''4 | % 2
      d''2 d'2 | % 3
      g'2. d'4 | % 4
      b'2 b'4. b'8 | % 5
      \time 4/4 b'2 c''4 b'4 \break | % 6
      a'2 a'2 \bar "||"
      | % 7
      \time 6/4  | % 7
      d'4 d'4 d'4 a'4 g'4
      f'4 | % 8
      \time 4/4  | % 8
      c''2 c''2 | % 9
      c''4 c''4 c''4 d''4 \break|
      es''2. d''4  | % 11
      c''2 c''2^\markup { "     " \musicglyph "scripts.caesura.straight" } | % 12
      c''4 -- c''4 -- c''4 -- d''4
      -- | % 13
      a'4 -- a'4 -- a'4 -- g'4 -- \break | % 14
      g'4 -- e'4 d'2 | % 15
      d'2. d'4  | % 16
      \time 3/4  | % 16
      d'4 d'4 c'4 | % 17
      d'2. | % 18
      r4 c'4 c'4 | % 19
      \time 6/4  | % 19
      f'2 g'2 bes'4 -- as'4 -- |

      g'2 -- f'2 r4 c''4 | % 21
      \time 4/4  | % 21
      f''1  | % 22
      r4 d''4 d''4 d''4 \break | % 23
      a'2 g'4 r4 | % 24
      r4 d''4 d''4 d''4 | % 25
      \time 3/2  | % 25
      e''2. d''4 d'4 ^\markup{ \bold {rall.} }
      d'4 | % 26
      e'1 r2 \bar "|."
    }

    \addlyrics {
      И
      ре -- че Бог: „Да бъ -- де прос --
      тор сред во -- ди -- те.“ И на --
      пра -- ви Бог прос -- то -- ра, и
      раз -- де -- ли Бог во -- да -- та
      над прос -- то -- ра от во -- да --
      та под про -- сто -- ра. И ста --
      на та -- ка. И на -- ре -- че Бог
      прос -- то -- ра не -- бе. И ста --
      на ве -- чер, и ста -- на ут -- ро,
      вто -- ри ден.}
      \addlyrics {
          I
        re -- che Bog: „Da ba -- de pros --
        tor sred vo -- di -- te.“ I na --
        pra -- vi Bog pros -- to -- ra, i
        raz -- de -- li Bog vo -- da -- ta
        nad pros -- to -- ra ot vo -- da --
        ta pod pro -- sto -- ra. I sta --
        na ta -- ka. I na -- re -- che Bog
        pros -- to -- ra ne -- be. I sta --
        na ve -- cher, i sta -- na ut -- ro,
        vto -- ri den.}

        \header {
          title = \titleFunc "Втори Божествен ден" "Vtori Bozhestven den"
        }

        \midi{}

      } % score

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic { "" "" \concat {"attaca" "   " }}
        }
      }

      % include foreign translation(s) of the song
      \include "lyrics_de/192_nb_vtori_bozhestven_den_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
