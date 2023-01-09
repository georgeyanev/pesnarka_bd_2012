\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 4/4
      \tempoFunc "Andante risoluto" 4 "66"
      \autoBeamOff
      \partial 4
      g'4
      | % 146
      g'4 g'4 c''2 ^\fermata | % 147
      bes'4  c''4  d''4  es''4 | % 148
      c''2 a'2 | % 149
      \acciaccatura {  a'16 [ bes' c''] } bes'2 f'2 |
      \time 4/4
      r4  bes'4  bes'4  c''4 | % 151
      g'2 g'4 es'4 | % 152
      es'4 f'4 d'2 ~ | % 153
      \time 3/4  | % 153
      d'4 r4  b'4 \bar "||"
      \break | % 154
      \key g \major | % 154
      d''2. | % 155
      d''2 g'4 | % 156
      d''2  c''4 | % 157
      g'4 ( a'4 )  b'4 | % 158
      a'2. | % 159
      a'2 r4 \break |
      a'8 a'8  d''8  d''8  d''8
      cis''8 | % 161
      a'2. | % 162
      r4  b'4 a'4 ~ | % 163
      a'4 %\once \omit TupletBracket
      \times 2/3  {
        a'8 a'8 a'8
      }
      b'4 ~ \break | % 164
      b'4 e'2 ~  | % 165
      \time 3/4 e'4 r4 ^\fermata e'4 | % 166
      e'4 e'4 d'4 | % 167
      e'2 r4 \bar "||"
      \key bes \major | % 168
      r2 r4 | \break % 169
      \tempo "Maestoso" d'2 g'4 |

      bes'2 ( ^\fermata g'4 ) | % 171
      a'2. | % 172
      r4 r4 g'4 | % 173
      \time 6/4  | % 173
      d'4 d'4 g'4  d''2. \break | % 174
      c''2 es'4 es'4 es'4. d'8 | % 175
      g'2 fis'4 a'2. | % 176
      \time 4/4  | % 176
      r4 a'4 a'4 a'4 | \break % 177
      bes'2 g'2 | % 178
      r4 a'4 a'4 a'4 | % 179
      \time 3/4  | % 179
      b'2 g'4 |
      \time 2/4  |
      g'4 g'4 | % 181
      \time 3/4 | % 181
      a'2. \bar "|."
    }

    \addlyrics {
      И ре -- че Бог:
      „Да се ро -- дят във во --
      да -- та ри -- би и мор -- ски
      чу -- до -- ви -- ща  и пти -- ци
      да хвър -- кат над  зе -- мя --
      та по не -- бес -- ни -- я прос --
      тор всич -- ки  спо -- ред ви --
      да __ си.“  И ста -- на та --
      ка. И ви -- дя  Бог, че всич --
      ко бе до -- бро. И бла -- го --
      сло -- ви ги Бог. И ста -- на ве
      -- чер, и ста -- на ут -- ро, пе --
      ти ден.}
      \addlyrics {
        I re -- che Bog:
        „Da se ro -- dyat vav vo --
        da -- ta ri -- bi i mor -- ski
        chu -- do -- vi -- shta  i pti -- tsi
        da hvar -- kat nad  ze -- mya --
        ta po ne -- bes -- ni -- ya pros --
        tor vsich -- ki  spo -- red vi --
        da __ si.“  I sta -- na ta --
        ka. I vi -- dya  Bog, che vsich --
        ko be do -- bro. I bla -- go --
        slo -- vi gi Bog. I sta -- na ve
        -- cher, i sta -- na ut -- ro, pe --
        ti den.}


        \header {
          title = \titleFunc "Пети божествен ден" "Peti bozhestven den"
        }

        \midi{}

      } % score

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic { "" "" \concat {"attaca" "   " }}
        }
      }

      \pageBreak

      % include foreign translation(s) of the song
      \include "lyrics_de/195_nb_peti_bozhestven_den_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
