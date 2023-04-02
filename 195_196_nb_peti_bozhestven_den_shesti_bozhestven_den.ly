\version "2.24.0"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref195
  \tocItem \markup "     Пети божествен ден – Peti bozhestven den "
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

      \markup \empty-three

        \label #'ref195
  \tocItem \markup "     Шести божествен ден – Shesti bozhestven den "

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

          a'4.^\markup {
            \concat { "       " \musicglyph #"scripts.caesura.straight"}
          } a'8 a'4 a'4 | % 196
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
          d'4 ^\markup{ \bold {Più mosso} } e'4 f'4
          g'4 | % 207
          a'2 a'2 | % 208
          d''4  b'4 g'4 g'4 | % 209
          a'4  bes'?4  bes'2 |
          a'2 d'4 e'4  ^\markup{ \bold {poco rall.} } \break  | % 211
          f'2 ( e'2 ) | % 212
          d'2 r2 ^\fermata | % 213
          \time 6/4  | % 213
          d'4. ^\markup{ \bold {a tempo} } a8 d'2
          cis'2 | % 214
          f'4 d'4 g'2 a'2 \break | % 215
          d'4 e'4 d'2 bes2 | % 216
          f'4 e'4 d'2 cis'2 | % 217
          e'4 -- e'4 -- f'2 e'4 -- r8
          f'8 \break | % 218
          a'4 ^\markup{ \bold {Più mosso} } a'4 a'2 r4
          d'4 | % 219
          \time 4/4  | % 219
          f'2 e'2 |
          d'1  | % 221
          \time 3/4  | % 221
          f'2. | % 222
          d'2. ~ \break | % 223
          d'2 r8 a'8 ^\markup{ \italic {recitativo} } | % 224
          a'4 a'8 a'8 a'8 a'8 | % 225
          a'8 g'16 ( [ a'16 ) ] g'4 f'8
          f'8 | % 226
          f'4 f'8 f'8 f'8 f'8 \break | % 227
          \time 4/4  | % 227
          f'8 e'16 ( [ f'16 ) ] d'4 e'4 ^\markup{ \bold {Più lento} }  e'4 |
          \grace { e'16 [ ( f' ]  } g'2 ) f'2 |
          e'4 d' \grace {
            e'16 (} d'2 ) |
            d'2 \fermata r4 d'4 |
            d'2 ^\markup{ \bold {Tempo I} } cis'2 | % 232
            d'2 r2 | % 233
            f'2 -- d'2 -- | % 234
            \time 3/4  | % 234
            r2 a'8 ^\markup{ \bold {Più mosso} } a'8  | % 235
            a'4 a'8 a'8 g'8 a'8 \break | % 236
            \time 4/4  | % 236
            fis'2
            \times 2/3  {
              fis'8  fis'8 fis'8
            }
            \times 2/3  {
              a'8  gis'8 fis'8
            }
            \bar "||"

            \key a \major | % 237
            b'4  b'4 r2  | % 238
            r4 fis'4 fis'4 fis'4  | \break % 239
            d'4 ^\markup{ \bold {poco rall.} } e'4 cis'2~ |
            \time 3/4  |
            cis'4 cis'4 d'4 | % 241
            \time 4/4  | % 241
            b2 b2 | % 242
            r4 fis'4 \times 2/3 {
              a'4 a'4 a'4
            }
            | % 243
            a'2. r4 \break | % 244
            r4 gis'2 ^\markup{ \bold {Più mosso} } gis'4 -- | % 245
            \time 6/4  | % 245
            cis''2. --  b'4 --  b'4 --  b'4
            -- | % 246
            a'2 -- a'2 -- fis'4 fis'4
            | % 247
            b'2 a'2 ( fis'2 ) | % 248
            gis'2 r2 gis'4 gis'4 | % 249
            \time 4/4  | % 249
            e''1 |
            \time 3/4  |
            d''2  b'4 -- | % 251
            \time 4/4  | \break % 251
            b'4 --  b'4 --  cis''4 --  b'4
            -- | % 252
            a'4 -- a'4 -- gis'4 -- r8
            ^\markup {
              \musicglyph #"scripts.caesura.straight"
            }
            ^\fermata
            cis''8  |  % 253
            fis''2 ^\fermata r8  ^\markup{ \bold {Poco meno mosso} } cis''8
            cis''8  cis''8  \break | % 254
            cis''4 a'4 r8  cis''8  cis''8
            cis''8 | % 255
            e''4. ^\fermata  cis''8 ^\markup{ \bold {rall.} }
            cis''4 --  b'4 -- | % 256
            a'2. r4 \bar "|."


          }
          \addlyrics {
            И ре -- че Бог:  „Да
            "дой-" -- дат над зе -- мя -- та жи --
            вот -- ни и зве -- ро -- ве спо --
            ред ви -- до -- ве -- те им.“ И
            ста -- на та -- ка. И ви -- дя Бог,
            че  всич -- ко бе до -- бро. И
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
            със се -- ме -- на -- та  ѝ и
            дър -- во -- то със пло -- до -- ве
            -- те  си за хра --
            на на че -- ло --  ве -- ка. И ре --
            че Бог: „Да -- вам и на зем --
            ни -- те "зве-" -- ро -- ве, и на "въз-"
            -- душ -- ни -- те пти -- ци, и всич
            -- ко, що пъл -- зи  по зе -- мя
            -- та и и -- ма жи -- вот, и чо --
            век да не по -- ся -- га на жи --
            во -- та  им.“ И ви -- дя Бог,
            че всич -- ко, що на -- пра -- ви,
            бе до -- бро. И ста -- на ве --
            чер, и ста -- на ут -- ро, шес --
            ти ден.
          }
          \addlyrics {
            I re -- che Bog:  „Da
            doy -- dat nad ze -- mya -- ta zhi --
            vot -- ni i zve -- ro -- ve spo --
            red vi -- do -- ve -- te im.“ I
            sta -- na ta -- ka. I vi -- dya Bog,
            che  vsich -- ko be do -- bro. I
            re -- che Bog, i saz -- da -- de che
            -- lo -- ve --  ka. Sam go saz
            -- da -- de po Svo -- ya ob -- raz i
            po -- do -- bi -- e. I bla -- go --
            slo -- vi go da vla -- de -- e
            vsich -- ko zhi -- vo po ze -- mya
            -- ta, da o -- bi -- cha i za --
            kri -- lya vsich -- ki tva -- ri vav
            vo -- da -- ta, po ze -- mya -- ta i
            vaz -- du -- ha. I re -- che Bog:
            „Da -- vam  __ tre -- va -- ta
            sas se -- me -- na -- ta  i i
            dar -- vo -- to sas plo -- do -- ve
            -- te  si za hra --
            na na che -- lo -- ve --  ka. I re --
            che Bog: „Da -- vam i na zem --
            ni -- te zve -- ro -- ve, i na "vaz-"
            -- dush -- ni -- te pti -- tsi, i vsich
            -- ko, shto pal -- zi  po ze -- mya
            -- ta i i -- ma zhi -- vot, i cho --
            vek da ne po -- sya -- ga na zhi --
            vo -- ta  im.“ I vi -- dya Bog,
            che vsich -- ko, shto na -- pra -- vi,
            be do -- bro. I sta -- na ve --
            cher, i sta -- na ut -- ro, shes --
            ti den.
          }


          \header {
            title = \titleFunc " Шести божествен ден" "Shesti bozhestven den"
          }

          \midi{}

        } % score

        \markup \raise #2.8 \override #'(baseline-skip . 2) {
          \column {
            \fill-line \italic { "" "" \concat {"attaca" "   " }}
          }
        }

        \markup \empty-one

        % include foreign translation(s) of the song
        \include "lyrics_de/196_nb_shesti_bozhestven_den_lyrics_de.ly"

      } % bookpart

      % Più mosso
      %
