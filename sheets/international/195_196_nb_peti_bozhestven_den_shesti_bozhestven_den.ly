\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref195
  \tocItem \markup "     Пети Божествен ден – Peti Božestven den "
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
      a'2 \fermata \bar "|."
    }

    \addlyrics {
      И ре -- че Бог:
      „Да се ро -- дят във во --
      да -- та ри -- би и мор -- ски
      чу -- до -- ви -- ща __  и пти -- ци
      да хвър -- кат над __  зе -- мя --
      та по не -- бес -- ни -- я прос --
      тор, всич -- ки __  спо -- ред ви --
      да __ си“. __  И ста -- на та --
      ка. И ви -- дя __  Бог, че всич --
      ко бе доб -- ро. И бла -- го --
      сло -- ви ги Бог. И ста -- на ве
      -- чер, и ста -- на ут -- ро, пе --
      ти ден.}
      \addlyrics {
        I re -- če Bog:
        „Da se ro -- djat văv vo --
        da -- ta ri -- bi i mor -- ski
        ču -- do -- vi -- šta __  i pti -- ci
        da hvăr -- kat nad __  ze -- mja --
        ta po ne -- bes -- ni -- ja pros --
        tor, vsič -- ki __  spo -- red vi --
        da __ si“. __  I sta -- na ta --
        ka. I vi -- dja __  Bog, če vsič --
        ko be dob -- ro. I bla -- go --
        slo -- vi gi Bog. I sta -- na ve
        -- čer, i sta -- na ut -- ro, pe --
        ti den.}


        \header {
          title = \titleFunc "Пети Божествен ден" "Peti Božestven den"
        }

        \midi{}

      } % score

      \markup \empty-one

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic { "" "" \concat {"attaca" "   " }}
        }
      }

      \pageBreak

      % include foreign translation(s) of the song
      \include "../../lyrics/de/195_nb_peti_bozhestven_den_lyrics_de.ly"

      \markup \vspace #3

      \label #'ref195
      \tocItem \markup "     Шести Божествен ден – Šesti Božestven den "

      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key d \minor
          \time 3/4
          \tempoFunc "Andante" 4 "66"
          \autoBeamOff
          r8 a'8  d''4 -- a'4 --
          | % 183
          f''2 ~ --  f''8  f''8 -- | % 184
          e''8 --  d''8 --  c''4 a'4 | % 185
          \time 4/4  | % 185
          d''2 ^\fermata a'4. ^\fermata f'8 \break | % 186
          e'8 f'8
          \times 2/3  {
            g'8  a'8 a'8
          }
          f'4 e'8 f'8 | % 187
          \time 3/4  | % 187
          g'8 g'8 a'8 a'8 d'4 | % 188
          \time 2/4  | % 188
          r4 d'4  \break | % 189
          \time 3/4  | % 189
          d'4 d'4 c'4 |
          d'2 r4 | % 191
          r4 \tempo "a tempo" d'4  d'4 | % 192
          d''2. | % 193
          c''2 bes'8 ( [ g'8 ) ] \break | % 194
          \time 4/4  | % 194
          a'4  bes'4  c''4  d''4  | % 195
          a'4.\caesura a'8 a'4 a'4 | % 196
          a''2.  g''8 f''8 \break | % 197
          e''4 \tempo "poco rall." d''4
          d''8 --  d''8 -- \once \omit TupletBracket
          \times 2/3  {
            cis''8 ( [  d''8  e''8 ) ]
          } |
          d''2  -- r2 | % 199
          R1 |
          \time 6/4  |
          g'2 f'2 e'2 \break | % 201
          d'2 d'2 r2  | % 202
          \time 4/4  | % 202
          bes'2 g'4 e'4 | % 203
          bes'2 a'2 | % 204
          \time 6/4  | % 204
          g'4 a'4  c''2  bes'2 | % 205
          \time 4/4  | % 205
          a'2 r2 ^\fermata \break | % 206
          \tempo"Più mosso" d'4 e'4 f'4
          g'4 | % 207
          a'2 a'2 | % 208
          d''4  b'4 g'4 g'4 | % 209
          a'4  bes'?4  bes'2 |
          a'2 \tempo"poco rall." d'4 e'4 \break  | % 211
          f'2 ( e'2 ) | % 212
          d'2 r2 ^\fermata | % 213
          \time 6/4  | % 213
          \tempo "a tempo" d'4. a8 d'2
          cis'2 | % 214
          f'4 d'4 g'2 a'2 \break | % 215
          d'4 e'4 d'2 bes2 | % 216
          f'4 e'4 d'2 cis'2 | % 217
          e'4 -- e'4 -- f'2 e'4 -- r8
          f'8 \break | % 218
          \tempo "Più mosso" a'4 a'4 a'2 r4
          d'4 | % 219
          \time 4/4  | % 219
          f'2 e'2 |
          d'1  | % 221
          \time 3/4  | % 221
          d'2. | % 222
          d'2. ~ \break | % 223
          d'2 r8  a'8^\markup{\huge \italic { recitativo } } | % 224
          a'4 a'8 a'8 a'8 a'8 | % 225
          a'8 g'16 ( [ a'16 ) ] g'4 f'8
          f'8 \break | % 226
          f'4 f'8 f'8 f'8 f'8  | % 227
          \time 4/4  | % 227
          f'8 e'16 ( [ f'16 ) ] d'4 \tempo"Più lento" e'4  e'4 |
          \grace { e'16 [ ( f' ]  } g'2 ) f'2 | \break
          e'4 d' \grace {
            e'16 (
          } d'2 ) |
          d'2 \fermata r4 d'4 |
          \tempo"Tempo I" d'2 cis'2 | % 232
          d'2 r2 | \break % 233
          f'2 -- d'2 -- |  \bar "||"  % 234
          \time 3/4  | % 234
          \key d \major r2 \tempo"Più mosso" a'8 a'8  | % 235
          a'4 a'8 a'8 g'8 a'8  | % 236
          \time 4/4  | \break  % 236
          fis'2
          \times 2/3  {
            fis'8  fis'8 fis'8
          }
          \times 2/3  {
            a'8  gis'8 fis'8
          }
          |  % 237
          b'4  b'4 r2  | % 238
          r4 fis'4 fis'4 fis'4  | \break % 239
          \tempo "poco rall." d'4 e'4 cis'2~ |
          \time 3/4  |
          cis'4 cis'4 d'4 |  % 241
          \time 4/4  | % 241
          b2 b2 |  % 242
          r4 fis'4 \times 2/3 {
            a'4 a'4 a'4
          }
          | % 243
          a'2. r4 | \bar "||" \break % 244
          r4 \tempo "Più mosso" gis'2 gis'4 -- |  % 245
          \time 6/4  | % 245
          cis''2. --  b'4 --  b'4 --  b'4
          -- |  % 246
          a'2 -- a'2 -- fis'4 fis'4
          | % 247
          b'2 a'2 ( fis'2 )  |  \break % 248
          gis'2 r2 gis'4 gis'4 | % 249
          \time 4/4  | % 249
          e''1 |
          \time 3/4  |
          d''2  b'4 -- | % 251
          \time 4/4  | % 251
          b'4 --  b'4 --  cis''4 --  b'4
          -- | \break  % 252
          a'4 -- a'4 -- gis'4 -- r8
          ^\markup {
            \musicglyph #"scripts.caesura.straight"
          }
          ^\fermata
          cis''8  |  % 253
          \key a \major
          fis''2 ^\fermata r8  \tempo"Poco meno mosso" cis''8
          cis''8  cis''8 | \break % 254
          cis''4 a'4 r8  cis''8  cis''8
          cis''8 | % 255
          e''4. ^\fermata  \tempo"rall." cis''8
          cis''4 --  b'4 -- | % 256
          a'2. r4 \bar "|."


        }
        \addlyrics {
          И ре -- че Бог: __  „Да
          дой -- дат над зе -- мя -- та жи --
          вот -- ни и зве -- ро -- ве спо --
          ред ви -- до -- ве -- те им“. И
          ста -- на та -- ка. И ви -- дя Бог,
          че  всич -- ко бе доб -- ро. И
          ре -- че Бог, и съз -- да -- де че
          -- ло -- ве --  ка. Сам го съз
          -- да -- де по Сво -- я об -- раз и
          по -- до -- би -- е. И бла -- го --
          сло -- ви го да вла -- де -- е
          всич -- ко жи -- во по зе -- мя
          -- та, да о -- би -- ча и за --
          кри -- ля всич -- ки тва -- ри във
          во -- да -- та, по зе -- мя -- та и
          въз -- ду -- ха. И ре -- че Бог:
          „Да -- вам  __ тре -- ва -- та
          със се -- ме -- на -- та __  ѝ и
          дър -- во -- то със пло -- до -- ве
          -- те __  си за хра --
          на на че -- ло --  ве -- ка“. И ре --
          че Бог: „Да -- вам и на зем --
          ни -- те зве -- ро -- ве, и на въз
          -- душ -- ни -- те пти -- ци, и всич
          -- ко, що пъл -- зи __ по зе -- мя
          -- та и и -- ма жи -- вот, и чо --
          век да не по -- ся -- га на жи --
          во -- та __ им“. И ви -- дя Бог,
          че всич -- ко, що на -- пра -- ви,
          бе доб -- ро. И ста -- на ве --
          чер, и ста -- на ут -- ро, шес --
          ти ден.
        }

        \addlyrics {
          I re -- če Bog: __  „Da
          doj -- dat nad ze -- mja -- ta ži --
          vot -- ni i zve -- ro -- ve spo --
          red vi -- do -- ve -- te im“. I
          sta -- na ta -- ka. I vi -- dja Bog,
          če  vsič -- ko be dob -- ro. I
          re -- če Bog, i săz -- da -- de če
          -- lo -- ve --  ka. Sam go săz
          -- da -- de po Svo -- ja ob -- raz i
          po -- do -- bi -- e. I bla -- go --
          slo -- vi go da vla -- de -- e
          vsič -- ko ži -- vo po ze -- mja
          -- ta, da o -- bi -- ča i za --
          kri -- lja vsič -- ki tva -- ri văv
          vo -- da -- ta, po ze -- mja -- ta i
          văz -- du -- ha. I re -- če Bog:
          „Da -- vam  __ tre -- va -- ta
          săs se -- me -- na -- ta __  i i
          dăr -- vo -- to săs plo -- do -- ve
          -- te __  si za hra --
          na na če -- lo --  ve -- ka“. I re --
          če Bog: „Da -- vam i na zem --
          ni -- te zve -- ro -- ve, i na văz
          -- duš -- ni -- te pti -- ci, i vsič
          -- ko, što păl -- zi __ po ze -- mja
          -- ta i i -- ma ži -- vot, i čo --
          vek da ne po -- sja -- ga na ži --
          vo -- ta __ im“. I vi -- dja Bog,
          če vsič -- ko, što na -- pra -- vi,
          be dob -- ro. I sta -- na ve --
          čer, i sta -- na ut -- ro, šes --
          ti den.
        }


        \header {
          title = \titleFunc "Шести Божествен ден" "Šesti Božestven den"
        }

        \midi{}

      } % score
      \markup \empty-one
      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \huge \italic { "" "" \concat {"attaca" "   " }}
        }
      }

      \markup \empty-three

      % include foreign translation(s) of the song
      \include "../../lyrics/de/196_nb_shesti_bozhestven_den_lyrics_de.ly"

    } % bookpart

    % Più mosso
    %
