\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref190
  \tocItem \markup "Гласът на Живия Господ"
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
      a'4. g'8 \tuplet 3/2 {
        g'8 ( [ fis'8 ])  g'8
      }
      | % 3
      a'4 c'4 r8 c'8 | % 4
      es'2 \autoBeamOff d'8 c'8  | % 5
      bes4 a4 r8 d'8 \bar "||" \break | % 6
      \time 5/4  | % 6
      \tempoFunc "Moderato" 4 "76"
      es'2 d'4 r4 d'8 d'8 | % 7
      \time 3/4  | % 7
      bes'4 ( a'4 ) g'4 | % 8
      g'4 fis'4 g'4 | % 9
      a'4 a'4 a'4 |
      a'2 g'4 \break  | % 11
      g'4 r4 r8 d'8 | % 12
      \time 4/4  | % 12
      d''2 g'4 r4| % 13
      g'8 ( [ a'8 ) ]  bes'8 ( [  c''8 )
      ]  d''4 g'4 |  % 14
      es''2  d''4  c''4 | % 15
      \time 3/4  | % 15
      bes'4 a'4 g'4 \break | % 16
      \time 4/4  | % 16
      fis'4 g'4 a'2 | % 17
      \time 3/4  | % 17
      g'2 r4 | % 18
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
      c''4  d''8 e''8  d''8  c''8 |  d''4. (d''4) r8 | \bar "||" \break
      \key a \minor
      \autoBeamOff a'8 a'8 a'8 c''8 a'8 g'8 | a'4. a'4. |
      f''4.  e''4 a'8  | \break
      \time 4/4  | % 35
      a'8 a'8  b'4  c''8 ( [
      b'8 ) ]
      a'8 ( [ gis'8 ) ] | % 36
      a'2 r4 r8 e'8 \bar "||"
      | % 37
      | % 37
      \tempoFunc "Moderato" 4 "72"
      e''2 a'4 r4 |  \break  % 38

      \autoBeamOn

      \time 5/4 a'8 (  [ b'8] )   c''8 (  [ d''8] )  e''4 a'4  a'4 |
      \time 3/4
      f''2  \autoBeamOff e''8  d''8 |
      \time 4/4
      \tweak direction #up \times 2/3 {
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
      те, ви -- е, ко -- и -- то сте ста --
      на -- ли. Ста -- не -- те, въз --
      крес -- не -- те, ви -- е, ко -- и
      -- то сте о -- жи -- ве -- ли. Чуй --
      те, Гос -- под се -- га ви го --
      во -- ри: „Мо -- я -- та ръ -- ка
      не се е съ -- кра -- ти -- ла да
      да -- вам. Пъ -- лен Съм със и --
      зо -- би -- ли -- е и не -- из -- чер
      -- па -- ем Съм, ко -- е -- то дър --
      жа за всич -- ки о -- не -- зи, ко
      -- и -- то Ме лю -- бят и се бо --
      ят от И -- ме -- то Ми. __ Бла -- го --
      сло -- ве -- ни бъ -- де -- те ви --
      е, ко -- и -- то Ме лю -- би
      -- те. Ста -- не -- те, въз --
      кръс -- не -- те за но -- ви -- я
      път на Лю -- бов -- та“.}

      \header {
        title = \titleFunc #'ref_desc_15 "Гласът на Живия Господ" " Glasăt na Živija Gospod – Novoto Văzkresenie"
        subtitle = \markup \normal-text \abs-fontsize #13 "Новото Възкресение"
      }

      \midi{}

    } % score

    \markup \vspace #4

 \label #'ref215
  \tocItem \markup "Зора на новия живот"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Andante" 4 "66"
      \autoBeamOff
      r8  d'8  g'8  b'8 | % 2
      d''4.  c''8 | % 3
      \acciaccatura {  b'16 [  c''16 ] }  b'8
      a'8  g'8 ( [  b'8 ) ] | % 4
      a'2 \break | % 5
      r8  d'8  e'8  fis'8 | % 6
      g'4. (  a'32 [  g'32  fis'32  g'32
      ] | % 7
      b'4. )  c''8 | % 8
      a'2 \break | % 9
      r8  d'8  g'8  fis'8 |
      b'8  a'8  d''8  c''8 | % 11
      \acciaccatura {  b'16 [  c''16 ] }  b'8
      a'8  a'8 ( [  b'8 ) ] | % 12
      g'2 \break | % 13
      r8  d'8  d'8  d'8 | % 14
      c''4.  b'8 | % 15
      a'8  g'8  a'16 ( [  g'32  a'32
      b'32  a'32  g'32  a'32 ) ] | % 16
      g'2 \break | % 17
      r8  d'8  d'8  d'8 | % 18
      d''8 ( ^\fermata [  e''16  d''16 ]
      c''16 [  b'16 ) ]  a'16 ( [  g'16 )
      ] | % 19
      b'4. (  c''16 [  b'16 ) ] |
      a'8 ( [ \once \omit TupletBracket
      \times 2/3  {
        b'16  a'16  g'16 ]
      }
      a'8 [  b'8 ) ] | % 21
      g'2 \bar "|."
    }


    \addlyrics {
      Зо -- ра се чуд -- на за --
      зо -- ря -- "ва  –" зо -- ра на нов __
      жи -- вот, ко --
      я -- то мен в~жи -- во -- та
      при -- зо -- ва -- ва. Зо --
      ра се чуд -- на за -- зо -- ря --
      ва, зо -- ра на
      но -- ви -- я __
      жи -- вот.}

      \header {
        title = \titleFunc #'ref_desc_16 "Зора на новия живот" "Zora na Novija život"
      }

      \midi{}

    } % score

  } % bookpart

  % Più mosso
  %
