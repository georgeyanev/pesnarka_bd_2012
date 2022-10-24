\version "2.22.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Maestoso" 4 "66"
      \autoBeamOff
      d'8 s8*5 | % 2
      a'4. g'8 \times 2/3 {
        g'8 ( [ fis'8 ) ] g'8
      }
      | % 3
      a'4 c'4 r8 c'8 | % 4
      es'2 d'8 c'8 | % 5
      bes4 a4 r8 d'8 \break | % 6
      \time 5/4  | % 6
      \tempoFunc "Moderato" 4 "76"
      es'2 d'4 r4 d'8 d'8 | % 7
      \time 3/4  | % 7
      bes'4 ( a'4 ) g'4 | % 8
      g'4 fis'4 g'4 | % 9
      a'4 a'4 a'4 |
      a'2 g'4 \break | % 11
      g'4 r4 r8 d'8 | % 12
      \time 4/4  | % 12
      d''2 g'4 r4 | % 13
      g'8 ( [ a'8 ) ]  bes'8 ( [  c''8 )
      ]  d''4 g'4 | % 14
      es''2  d''4  c''4 | % 15
      \time 3/4  | % 15
      bes'4 a'4 g'4 \break | % 16
      \time 4/4  | % 16
      fis'4 g'4 a'2 | % 17
      \time 3/4  | % 17
      g'2 r4 | % 18
      \time 4/4  | % 18
      g'2 d'4 r4 \bar "||"
      \tempo "Lento"
      \times 2/3  {
        g'8  d'8 d'8
      }
      \times 2/3  {
        d'8 d'8 d'8
      }
      es'4 ^\fermata d'4 ^\fermata \bar "||"
      \break |
      \tempoFunc "Adagio" 4 "54"
      bes'8  bes'8 a'8 g'8
      d''4  c''8  bes'8 | % 21
      a'4 g'8 d'8 es'4 es'8.
      d'16 | % 22
      \time 3/4  | % 22
      a'4 a'4 r4 \bar "||"
      \break | % 23
      c''8 a'8 a'4 a'4 | % 24
      g'8 f'8 a'8 a'8 a'4 | % 25
      a'4 a'4 g'8 f'8 | % 26
      g'8 g'8 g'4 r8 g'8 \break | % 27
      a'8  bes'8  c''8  d''4
      d''8 | % 28
      \time 4/4  | % 28
      f''8  d''8  c''8  d''8
      d''4.  d''8 | % 29
      d''8  c''8  bes'8  d''4.
      d''4 \break |
      \time 3/4  |
      g'8 a'8  bes'8  c''4  d''8
      | % 31
      es''8  d''8  c''8  d''4. \bar
      "||"
      \key a \minor | % 32
      r4 r8 a'8 a'8 a'8 \break | % 33

      c''8 a'8 g'8 a'4 a'8 | % 34
      f''4  e''4. a'8 | % 35
      \time 4/4  | % 35
      a'8 a'8  b'4  c''8 ( [
      b'8 ) ] a'8 ( [ gis'8 ) ] | % 36
      a'2 r4 r8 e'8 \bar "||"
      \break | % 37
      | % 37
      \tempoFunc "Moderato" 4 "72"
      e''2 a'4 r4 | % 38
      a'8 ( [ b'8 ) ]  c''8 ( [  d''8 )
      ]  e''4 a'4 | % 39
      a'4  f''2  e''8  d''8 \tempo "rit."|
      \times 2/3 {
        c''8 ( [ b'8 ) ] a'8
      }
      \times 2/3 {
        gis'8 ( [  a'8
        ) ] b'8
      }
      a'2
      \bar "|."

    }

    \addlyrics {
      Ста -- не -- те ви -- е, мърт --
      ви, ста -- не -- те от гро -- ба.
      Ста -- не -- те, о -- жи -- вей --
      те ви -- е, ко -- и -- то сте ста --
      на -- ли. Ста -- не -- те, въз --
      крес -- не -- те ви -- е, ко -- и
      -- то сте о -- жи -- ве -- ли. Чуй --
      те, Гос -- под се -- га ви го --
      во -- ри: „Мо -- я -- та ръ -- ка
      не се е съ -- кра -- ти -- ла да
      да -- вам. Пъ -- лен Съм със и --
      зо -- би -- ли -- е и не -- из -- чер
      -- па -- ем Съм, ко -- е -- то дър --
      жа за всич -- ки о -- не -- зи, ко
      -- и -- то Ме лю -- бят и се бо --
      ят от И -- ме -- то Ми. Бла -- го --
      сло -- ве -- ни бъ -- де -- те ви --
      е, ко -- и -- то Ме лю -- би
      -- те. Ста -- не -- те, въз --
      кръс -- не -- те за но -- ви -- я
      път  __ на Лю -- бов -- та.“}
      \addlyrics {
        Sta -- ne -- te vi -- e, mart --
        vi, sta -- ne -- te ot gro -- ba.
        Sta -- ne -- te, o -- zhi -- vey --
        te vi -- e, ko -- i -- to ste sta --
        na -- li. Sta -- ne -- te, vaz --
        kres -- ne -- te vi -- e, ko -- i
        -- to ste o -- zhi -- ve -- li. Chuy --
        te, Gos -- pod se -- ga vi go --
        vo -- ri: „Mo -- ya -- ta ra -- ka
        ne se e sa -- kra -- ti -- la da
        da -- vam. Pa -- len Sam sas i --
        zo -- bi -- li -- e i ne -- iz -- cher
        -- pa -- em Sam, ko -- e -- to dar --
        zha za vsich -- ki o -- ne -- zi, ko
        -- i -- to Me lyu -- byat i se bo --
        yat ot I -- me -- to Mi. Bla -- go --
        slo -- ve -- ni ba -- de -- te vi --
        e, ko -- i -- to Me lyu -- bi
        -- te. Sta -- ne -- te, vaz --
        kras -- ne -- te za no -- vi -- ya
        pat  __ na Lyu -- bov -- ta.“}

        \header {
          title = \titleFunc "Гласът на Живия Господ - Новото Възкресение" " Glasat na Zhivija Gospod - Novoto Vaskresenie"
        }

        \midi{}

      } % score


      % include foreign translation(s) of the song
      \include "lyrics_de/190_glasat_sa_zhiviya_Gospod_lyrics_de.ly"
    } % bookpart

    % Più mosso
    %
