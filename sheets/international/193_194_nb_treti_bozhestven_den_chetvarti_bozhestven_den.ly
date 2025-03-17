\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref193
  \tocItem \markup "     Трети Божествен ден – Treti Božestven den"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key e \minor
      \time 3/2
      \tempo "Lento cantabile"
      \autoBeamOff
      \partial 2.
      e'4  fis'4
      e'4 | % 2
      \time 4/4  | % 2
      e'1 | % 3
      e'4  e'4  e'4  e'4 | % 4
      e''2. d''4   | % 5
      \time 3/2   | % 5
      c''2 c''2 b'4  a'4 | \break % 6
      c''2 b'2 r2 | % 7
      r2  e'4  e'4  e'4  d'4 | % 8
      e'1 r2 \bar "||"
      \key a \minor | % 9
      \tempo "Più mosso"e'2 f'?4  a'2
      gis'4 |
      b'4 ( d''4 ) c''4 b'2. \break | % 11
      b'4 c''4  a'2 b'4 b'4
      | % 12
      c''2 b'4 (  a'4 ) b'2 -- | % 13
      \time 4/4  | % 13
      b'4 b'4 e''4 e''4 | % 14
      d''4 ( c''4 ) b'4 (  a'4 )
      \break | % 15
      b'2 r4 b'4 | % 16
      d''2 c''4  a'4 | % 17
      b'1 | % 18
      r2.  \tempo "Tempo I" e'4 | % 19
      e'2  d'2 |
      e'1 \breathe   | % 21
      \time 3/4  | % 21
      e'2  e'4  |  % 22
      a'2  gis'4 | \break % 23
      b'4 d''4 c''4 | % 24
      b'2 r4 | % 25
      c''2 \tempo"sostenuto" c''8 --
      c''8 -- | % 26
      \time 5/4  | % 26
      fis''2 fis''4 e''4 dis''4 |  % 27
      \time 3/4  | % 27
      fis''2 e''4 ~ |\break   % 28
      \time 4/4  | % 28
      e''4 r4  \tempo"a tempo"e'4
      b'4 | % 29
      \time 6/4  | % 29
      a'2.  a'4  a'4  a'4 |
      \time 5/4  |
      e''2 d''4 c''4  a'4  | % 31
      b'2 b'2 r4 | \break % 32
      \time 3/4  | % 32
      gis'2  gis'4 |  % 33
      b'2 (  gis'4 ) | % 34
      gis'2. ~ | % 35
      gis'4 b'4 ( cis''4 ) | % 36
      \time 4/4  | % 36
      dis''2 e''2  | % 37
      fis''2. ^\fermata e''4 -- | % 38
      e''1 | \break % 39
      \time 2/4  | % 39
      r4  f'?4 |
      \time 3/4  |
      f'2  e'4 | % 41
      b'2  a'4 | % 42
      \time 4/4  | % 42
      r4  e'4  e'4  e'4 | % 43
      \time 6/4  | % 43
      b'2.  a'4   % 44
      \tempo"rall."e'4 e'4 | e'2. \fermata
      \bar "|."
    }

    \addlyrics {
      И
      ре -- че Бог: „Да се съ -- бе --
      ре во -- да -- та под не -- бе --
      то“. И ста -- на та -- ка. И я --
      ви се су -- ша -- та. И на --
      ре -- че я Бог зе -- мя. И съ
      -- бра -- на -- та __  во -- да на
      -- ре -- че мо -- ре. И ре -- че
      Бог, и из -- рас -- на све -- жа
      тре -- ва със се -- ме -- на спо --
      ред ви -- да си __  и дър -- во
      със пло -- до -- ве спо -- ред ви --
      да си. И ви -- дя __  Бог, __ че __
      всич -- ко бе доб -- ро. И ста
      -- на ве -- чер, и ста -- на ут --
      ро, тре -- ти ден.}


      \addlyrics {
        I
        re -- če Bog: „Da se să -- be --
        re vo -- da -- ta pod ne -- be --
        to“. I sta -- na ta -- ka. I ja --
        vi se su -- ša -- ta. I na --
        re -- če ja Bog ze -- mja. I să
        -- bra -- na -- ta __  vo -- da na
        -- re -- če mo -- re. I re -- če
        Bog, i iz -- ras -- na sve -- ža
        tre -- va săs se -- me -- na spo --
        red vi -- da si __  i dăr -- vo
        săs plo -- do -- ve spo -- red vi --
        da si. I vi -- dja __  Bog, __ če __
        vsič -- ko be dob -- ro. I sta
        -- na ve -- čer, i sta -- na ut --
        ro, tre -- ti den.}

        \header {
          title = \titleFunc "Трети Божествен ден" "Treti Božestven den"
        }

        \midi{}

      } % score

      \markup \raise #2.8 \override #'(baseline-skip . 2) {
        \column {
          \fill-line \italic \huge { "" "" \concat {"attaca" "   " }}
        }
      }

      % include foreign translation(s) of the song
      \include "../../lyrics/de/193_nb_treti_bozhestven_den_lyrics_de.ly"



      \markup \vspace #2

      \label #'ref194
      \tocItem \markup "     Четвърти Божествен ден – Četvărti Božestven den"
      \include "include/bookpart-paper.ily"
      \score {
        \include "include/score-layout.ily"

        \new Voice \absolute {
          \clef treble
          \key e \minor
          \time 3/4
          \tempoFunc "Moderato espressivo" 4 "88"
          \autoBeamOff
          \partial 8
          f'8  | % 2
          f'2  e'4 | % 3
          a'2  gis'4 | % 4
          b'4 ( d''4 c''4 ) | % 5
          b'2. | % 6
          r4 c''4 c''4 \break  | % 7
          e''4 e''4 c''4 | % 8
          g''4 ^\fermata -- g''4 -- fis''4
          | % 9
          e''2 ^\fermata  e'4 -- |
          e'4 --  e'4 --  d'4 -- | % 11
          \time 4/4  | % 11
          e'2 ^\fermata  e'4  e'4 \break | % 12
          a'2 b'2 | % 13
          c''4 (  a'4 ) d''2 | % 14
          c''4  a'4 b'2 ~ | % 15
          b'2 r4 b'4 | % 16
          fis''2. e''4 \break  | % 17
          d''2 d''4 d''4 | % 18
          c''4 (  a'4 ) b'4 ( c''4 ) | % 19
          b'2 r4 b'4 |
          \time 5/4  |
          \tempo"poco rit." c''2 b'4
          f'4  d'4 \break | % 21
          \time 4/4  | % 21
          e'2. r4 | % 22
          \time 3/4  | % 22
          \tempo"a tempo"e'2 f'4 | % 23
          a'2 b'4 | % 24
          b'2 r8 b'8 | % 25
          \time 5/4  | % 25
          g''2 fis''?4 e''4 d''4 \break  | % 26
          e''2 c''4 ( b'4 )  a'4 | % 27
          \time 4/4  | % 27
          d''4 d''4 c''4  a'4 | % 28
          b'2 ^\fermata \tempo"Poco lento" e'4
          e'4 | % 29
          f'2 (  e'2 ) \break |
          a'2 b'4 ( c''4 ) | % 31
          d''2 e''2 | % 32
          f''2. -- e''4 --  | % 33
          a'2. -- r4 | % 34
          r4  fis'?4  fis'4  fis'4 \break | % 35
          fis'2  e'2 | % 36
          r4  fis'4  fis'4  fis'4 | % 37
          a'2.  fis'4 | % 38
          \time 6/4  | % 38
          fis'4  \tempo "rall." e'4  fis'2
          fis'4. \bar "|."
        }

        \addlyrics {
          И
          ре -- че Бог: „Да грей --
          нат све -- ти -- ла на не -- бес --
          ни -- я свод“. И ста -- на та --
          ка. И на -- пра -- ви Бог __  две
          све -- ти -- ла: __  го -- ля -- мо --
          то да вла -- дей __  де -- ня,
          а мал -- ко -- то нощ -- та. И на --
          пра -- ви Бог, че грей -- на -- ха
          звез -- ди на __  не -- бес -- ни --
          я прос -- тор. И ви -- дя __  Бог,
          че __  всич -- ко бе доб -- ро. И
          ста -- на ве -- чер, и ста -- на
          ут -- ро, ден чет -- вър -- ти.}
          \addlyrics {
            I
            re -- če Bog: „Da grej --
            nat sve -- ti -- la na ne -- bes --
            ni -- ja svod“. I sta -- na ta --
            ka. I na -- pra -- vi Bog __  dve
            sve -- ti -- la: __  go -- lja -- mo --
            to da vla -- dej __  de -- nja,
            a mal -- ko -- to nošt -- ta. I na --
            pra -- vi Bog, če grej -- na -- ha
            zvez -- di na __  ne -- bes -- ni --
            ja pros -- tor. I vi -- dja __  Bog,
            če __  vsič -- ko be dob -- ro. I
            sta -- na ve -- čer, i sta -- na
            ut -- ro, den čet -- văr -- ti.}

            \header {
              title = \titleFunc "Четвърти Божествен ден" "Četvărti Božestven den"
            }

            \midi{}

          } % score
          \markup \raise #2.8 \override #'(baseline-skip . 2) {
            \column {
              \fill-line \italic { "" "" \concat {"attaca" "   " }}
            }
          }

          \markup \vspace #1

          % include foreign translation(s) of the song
          \include "../../lyrics/de/194_nb_chetvarti_bozhestven_den_lyrics_de.ly"
          \markup \vspace #2

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
              \acciaccatura {  a'16 [ bes' c''] } bes'2 f'2 | \break
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

              \markup \raise #2.8 \override #'(baseline-skip . 2) {
                \column {
                  \fill-line \italic { "" "" \concat {"attaca" "   " }}
                }
              }
\markup \vspace #2
              % include foreign translation(s) of the song
              \include "../../lyrics/de/195_nb_peti_bozhestven_den_lyrics_de.ly"

              \markup \vspace #2

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

             \markup \raise #2.8 \override #'(baseline-skip . 2) {
                \column {
                  \fill-line \italic { "" "" \concat {"attaca" "   " }}
                }
              }
              \pageBreak
              % include foreign translation(s) of the song
              \include "../../lyrics/de/196_nb_shesti_bozhestven_den_lyrics_de.ly"
              \markup \vspace #2
              \label #'ref199
              \tocItem \markup "     Седми Божествен ден – Sedmi Božestven den "
              \include "include/bookpart-paper.ily"
              \score {
                \include "include/score-layout.ily"

                \new Voice \absolute {
                  \clef treble
                  \key e \major
                  \time 3/2
                  \tempo "Andante cantabile"
                  \autoBeamOff
                  b'4  b'4 e''2.  dis''4 | % 258
                  b''2.  a''4 \tupletUp  \times 2/3 {
                    \once \override Slur.positions = #'(1 . 1) gis''4 (  fis''4 )  e''4
                  }
                  | % 259
                  dis''4  cis''4  dis''4.  dis''8
                  fis''2 \break |
                  e''2 r2   \tempo "Maestoso" b'2  \bar
                  "||"
                  \key g \major | % 261
                  b'2  b'2  b'2 | % 262
                  \time 4/4  |

                  \grace { a'16 ([b'16] } c''2) b'2 | a'2 g'4 g'4 | \break

                  \time 6/4  | % 264
                  fis'2 ( g'2 ) a'2 | % 265
                  \time 4/4  | % 265
                  g'2 r2 \bar "||"
                  \key g \minor | % 266
                  d'4 d'4 es'?4. d'8 | % 267
                  g'2  bes'2 ^\fermata \break | % 268
                  c''2  bes'4  bes'4 | % 269
                  a'2 g'4 g'4 |
                  bes'2 a'2 | % 271
                  g'2 r2 | % 272
                  r4 g'4 \times 2/3 {
                    d''4  d''4  d''4
                  }
                  \break | % 273
                  \time 6/4  | % 273
                  es''2  c''2  c''4  c''4 | % 274
                  d''2 g'2 r4 g'4 | % 275
                  d''4  c''4 g'4 a'4  c''2
                  \break | % 276
                  \time 4/4  | % 276
                  bes'2. r4 | % 277
                  \time 3/4  | % 277
                  g'8 ( [ a'8 bes'8 c''8  ])
                  d''4 | % 278
                  \time 4/4  | % 278
                  g''4  bes''2 ^\fermata  a''4  | % 279
                  \time 5/4  | % 279
                  g''2  f''4  es''4  d''4 | \break
                  \time 3/2  |
                  c''4  bes'4 a'2.  c''4 | % 281
                  bes'2 ^\fermata \breathe g'4 g'2 ^\fermata
                  g'4 | % 282
                  g'2. r4 g'4 a'4 | % 283
                  g'1 r2 \bar "|."
                }
                \addlyrics {
                  И та -- ка съз -- да -- де
                  Бог не -- бе -- то и зе -- мя --
                  та, и всич -- ко -- то
                  мно -- же -- ство съ -- ще -- ства __  във
                  тях. И бла -- го -- сло -- ви Бог
                  сед -- ми -- я ден и го о -- све --
                  ти, за -- що -- то във не -- го си
                  по -- чи -- на от всич -- ки -- те
                  си де -- ла. И __    ви -- дя
                  Бог, че всич -- ко, що на -- пра --
                  ви, бе доб -- ро! А -- ум! А -- ум!
                  А -- у -- мен!}
                  \addlyrics {
                    I ta -- ka săz -- da -- de
                    Bog ne -- be -- to i ze -- mja --
                    ta, i vsič -- ko -- to
                    mno -- že -- stvo să -- šte -- stva __  văv
                    tjah. I bla -- go -- slo -- vi Bog
                    sed -- mi -- ja den i go o -- sve --
                    ti, za -- što -- to văv ne -- go si
                    po -- či -- na ot vsič -- ki -- te
                    si de -- la. I __    vi -- dja
                    Bog, če vsič -- ko, što na -- pra --
                    vi, be dob -- ro! A -- um! A -- um!
                    A -- u -- men!}


                    \header {
                      title = \titleFunc "Седми Божествен ден" "Sedmi Božestven den"
                    }

                    \midi{}

                  } % score

                  \markup \vspace #2
                  % include foreign translation(s) of the song
                  \include "../../lyrics/de/199_nb_sedmi_bozhestven_den_lyrics_de.ly"
                } % bookpart

                % Più mosso
                %
