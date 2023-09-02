\version "2.24.1"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref190
  \tocItem \markup "Гласът на Живия Господ – Glasăt na Živija Gospod"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Maestoso" 4 "66"
     
      \partial 8
      d'8 | % 2
      a'4. g'8 \once \omit TupletBracket \tuplet 3/2 {
        g'8 ( [ fis'8 ])  g'8 
      }
      | % 3
      a'4 c'4 r8 c'8 | % 4
      es'2 \autoBeamOff d'8 c'8 \break | % 5
      bes4 a4 r8 d'8 \bar "||" | % 6
      \time 5/4  | % 6
      \tempoFunc "Moderato" 4 "76"
      es'2 d'4 r4 d'8 d'8 | % 7
      \time 3/4  | % 7
      bes'4 ( a'4 ) g'4 | % 8
      g'4 fis'4 g'4 \break | % 9
      a'4 a'4 a'4 |
      a'2 g'4  | % 11
      g'4 r4 r8 d'8 | % 12
      \time 3/4  | % 12
      d''2 g'4 | \time 2/4 r2 |  % 13
     \time 4/4 g'8 ( [ a'8 ) ]  bes'8 ( [  c''8 )
      ]  d''4 g'4 | \break % 14
      es''2  d''4  c''4 | % 15
      \time 3/4  | % 15
      bes'4 a'4 g'4 | % 16
      \time 4/4  | % 16
      fis'4 g'4 a'2 | % 17
      \time 3/4  | % 17
      g'2 r4 | \break % 18
      \time 4/4  | % 18
      g'2 d'4 r4 \bar "||" 
      \autoBeamOff
      \tempo "Lento"
      \times 2/3  {
        d'8  d'8 d'8
      }
      \times 2/3  {
        d'8 d'8 d'8
      }
      es'4 ^\fermata d'4 ^\fermata \bar "||"
      \break |
      \tempoFunc "Adagio" 4 "54"
      \time 6/4
      bes'8  bes'8 a'8 g'8
      d''4  c''8  bes'8  % 21
      a'4 g'8 d'8 | es'4 es'8. d'16 a'4 a'4 r2 \break \bar "||" | % 23
     
      \key f \major
      c''8 a'8 a'4 a'4  g'8 f'8 a'8 a'8 a'4 | % 25
      a'4 a'4 g'8 f'8 g'8 g'8 g'4 r8 g'8 | \break  % 27
      \time 9/8
      \autoBeamOff
      a'8  bes'8  c''8  d''4
      d''8 f''8  d''8  c''8 | d''4.
      d''4  d''8 
      d''8  c''8  bes'8 | \break
       d''4.
      d''4. g'8 a'8  bes'8 | 
      \time 6/8
       c''4  d''8 e''?8  d''8  c''8 |  d''4. (d''4) r8 | \bar "||" \break
      \key a \minor
      \autoBeamOff a'8 a'8 a'8 c''8 a'8 g'8 | a'4. a'4. |
      f''4.  e''4 a'8  | \break
      \time 4/4  | % 35
      a'8 a'8  b'4  c''8 ( [
      b'8 ) ] a'8 ( [ gis'8 ) ] | % 36
      a'2 r4 r8 e'8 \bar "||"
      \break | % 37
      | % 37
      \tempoFunc "Moderato" 4 "72"
      e''2 a'4 r4 | % 38

      \autoBeamOn
    
      \time 5/4 a'8 (  [ b'8] )   c''8 (  [ d''8] )  e''4 a'4  a'4 | 
      \time 3/4 
      f''2  \autoBeamOff e''8  d''8 |
      \time 4/4
      \tweak direction #up \once \omit TupletBracket \times 2/3 {
        \once \override Slur.positions = #'(1 . 1)
        \tempo "         rit." c''8   ( [  b'8 ) ]  a'8 
      }
      \once \omit TupletBracket \times 2/3 {
        gis'8 ( [  a'8
        ) ] b'8
      }
      a'4.
      \bar "|."

    }

    \addlyrics {
      Ста -- не -- те ви -- е, мърт --
      ви, ста -- не -- те от гро -- ба.
      Ста -- не -- те, о -- жи -- вей --
      те ви -- е, ко -- и -- то сте ста --
      на -- ли. Ста -- не -- те, въз --
      "крес-" -- не -- те ви -- е, ко -- и
      -- то сте о -- жи -- ве -- ли. Чуй --
      те, Гос -- под се -- га ви го --
      во -- ри: „Мо -- я -- та ръ -- ка
      не се е съ -- кра -- ти -- ла да
      да -- вам. "Пъ-" -- лен съм със и --
      зо -- би -- ли -- е и не -- из -- чер
      -- па -- ем съм, ко -- е -- то дър --
      жа за всич -- ки о -- не -- зи, ко
      -- и -- то Ме лю -- бят и се бо --
      ят от И -- ме -- то Ми. __ Бла -- го --
      сло -- ве -- ни бъ -- де -- те ви --
      е, ко -- и -- то Ме лю -- би
      -- те. Ста -- не -- те, въз --
      "кръс-" -- не -- те за но -- ви -- я
      път на "Лю-" -- "бов-" -- та.“}
      \addlyrics {
      Sta -- ne -- te vi -- e, mărt --
      vi, sta -- ne -- te ot gro -- ba.
      Sta -- ne -- te, o -- ži -- vej --
      te vi -- e, ko -- i -- to ste sta --
      na -- li. Sta -- ne -- te, văz --
      kres -- ne -- te vi -- e, ko -- i
      -- to ste o -- ži -- ve -- li. Čuj --
      te, "Gos-" -- pod se -- ga vi go --
      vo -- ri: „Mo -- ja -- ta ră -- ka
      ne se e să -- kra -- ti -- la da
      da -- vam. Pă -- len săm săs i --
      zo -- bi -- li -- e i ne -- iz -- čer
      -- pa -- em săm, ko -- e -- to dăr --
      ža za vsič -- ki o -- ne -- zi, ko
      -- i -- to Me lju -- bjat i se bo --
      jat ot I -- me -- to Mi. __ Bla -- go --
      slo -- ve -- ni bă -- de -- te vi --
      e, ko -- i -- to Me lju -- bi
      -- te. Sta -- ne -- te, văz --
      krăs -- ne -- te za no -- vi -- ja
      păt na "Lju-" -- "bov-" -- ta.“}

        \header {
          title = \titleFunc "Гласът на Живия Господ – Новото Възкресение" " Glasăt na Živija Gospod – Novoto Văzkresenie"
        }

        \midi{}

      } % score

      \markup \empty-one
      % include foreign translation(s) of the song
      \include "lyrics_de/190_glasat_sa_zhiviya_Gospod_lyrics_de.ly"
    } % bookpart

    % Più mosso
    %
