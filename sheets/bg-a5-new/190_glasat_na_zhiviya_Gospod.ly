\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref190
  \tocItem \markup "Гласът на Живия Господ"
\paper {
  print-all-headers = ##t
  print-page-number = ##t
  print-first-page-number = ##t


  % put page numbers on the bottom
  oddHeaderMarkup = \markup {

    \fill-line {
      ""
      \if \should-print-page-number  \abs-fontsize #10 {
        \bold \fromproperty #'page:page-number-string

      }
    }
  }
  evenHeaderMarkup = \markup {

    \fill-line {
      \if \should-print-page-number \abs-fontsize #10 {
        \bold  \fromproperty #'page:page-number-string
        ""
      }
    }
  }

  oddFooterMarkup = \markup ""

  evenFooterMarkup = ""
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 1\cm
  bottom-margin = 1.2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
  top-markup-spacing.basic-distance = 6\mm % margin between page number and system for the first page
  top-system-spacing.basic-distance = 10\mm % margin between page number and system for the other pages 

  % change distance between staves
  system-system-spacing =
  #'((basic-distance . 12)
     (minimum-distance . 6)
     (padding . 1)
     (stretchability . 12))
}
  \score {
    \layout {
      indent = 0.0\cm % remove first line indentation
      ragged-last = ##f % do spread last line to fill the whole space
      \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
      \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
      

      \context {
        \Score
        \omit BarNumber %remove bar numbers
        \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
        \override TupletNumber.font-size = #0.4 % increase the triol number

      } % context

      \context {
        % change staff size
        \Staff
        \override StaffSymbol.thickness = #0.5
        \override BarLine.hair-thickness = #1
        %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
      }

      \context {
        % adjust space between staff and lyrics and between the two lyric lines
        \Lyrics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 0.73))
        \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
        includeGraceNotes = ##t
      }
    } % layout

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
      "крес-" -- не -- те, ви -- е, ко -- и
      -- то сте о -- жи -- ве -- ли. Чуй --
      те, "Гос-" -- под "се-" -- га ви "го-" --
      во -- ри: „Мо -- я -- та ръ -- ка
      не се е съ -- кра -- ти -- ла да
      да -- вам. "Пъ-" -- лен Съм със и --
      зо -- би -- ли -- е и не -- из -- чер
      -- па -- ем Съм, ко -- е -- то дър --
      жа за всич -- ки о -- не -- зи, ко
      -- и -- то Ме лю -- бят и се бо --
      ят от И -- ме -- то Ми. __ Бла -- го --
      сло -- ве -- ни бъ -- де -- те ви --
      е, ко -- и -- то Ме лю -- би
      -- те. Ста -- не -- те, въз --
      кръс -- не -- те за но -- ви -- я
      път на "Лю-" -- "бов-" -- та“.}

      \header {
        title = \titleFunc #'ref_desc_15 "Гласът на Живия Господ – Новото Възкресение" " Glasăt na Živija Gospod – Novoto Văzkresenie"
      }

      \midi{}

    } % score

  } % bookpart

  % Più mosso
  %
