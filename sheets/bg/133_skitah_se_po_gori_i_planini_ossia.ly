\version "2.24.4"

\include "include/globals.ily"

\bookpart {
  \label #'ref133
  \tocItem \markup "Скитах се по гори и планини"
  \include "include/bookpart-paper.ily"
  \score {
      \layout {
        indent = 0.0\cm % remove first line indentation
        ragged-last = ##f % do spread last line to fill the whole space
        \override Staff.BarLine.thick-thickness = #4 %make the end and repeat bars thiner
        \override Score.VoltaBracket.font-size = #-1.7 % make the repeat number fontsize smaller
        

        \context {
          \Score
          \omit BarNumber %remove bar numbers
          \override KeySignature.X-offset = #-1.2 % decrease keysigniture offset
          \override TimeSignature.X-offset = #-1.8 % decrease time signiture offset
          \override MetronomeMark.font-size = #1.5 % increase the tempo fontsize
          \override TupletNumber.font-size = #0.4 % increase the triol number

        } % context

        \context {
          % change staff size
          \Staff
          fontSize = #+0 % affects notes size only
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #0.5
          \override BarLine.hair-thickness = #1
          %\override StaffSymbol.ledger-line-thickness = #'(0 . 0)
        }

        \context {
          % adjust space between staff and lyrics and between the two lyric lines
          \Lyrics
          \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1))
          \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((minimum-distance . 2))
          includeGraceNotes = ##t
        }
      } % layout

    \new Staff = main \relative c' {
      \clef treble
      \key g \minor
      \time 2/4
      \tempoFunc "Lento" 4 "54"
      \autoBeamOff
      d4  g8. (  [a16] ) | % 2
      bes4. (  a8 ) | % 3
      g16  fis16  g16  a16  g8
      es8 \break | % 4
      \time 3/4  | % 4
      d2
      \tupletUp \times 2/3  {
        a'8   bes8  c8
      }
      | % 5
      d4.  a8
      \times 2/3  {
        c8   bes8  a8
      }
      | % 6

      \times 2/3  {
        \stemUp bes8 (   [a8] )  g8
      } \stemNeutral
      g2 \break | % 7
      d'4 (
      \times 2/3  {
        d8 )   cis8  d8
      }

      \times 2/3  {
        es8   d8  cis8
      }
      | % 8
      d2
      \times 2/3  {
        a8   bes8  c8
      }
      | % 9
      d4.  c8  d8  c8 \break
      |
      bes2
      \times 2/3  {
        a8   bes8  c8
      }
      | % 11
      d4.  a8  c16  bes16
      a16  g16 | % 12
      g2 r4    \bar ".|:-|"
      | % 13
      \time 4/4  | % 13
      d'8 ^\fermata
      \times 2/3  {
        d16  d16  d16 ]
      }
      d8 ( [  g8 ) ]  bes2 | % 14

      <<
        {a16  g16  fis16  g16 a8.  g16  g2}

        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 4.5)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1
          \override StaffSymbol.staff-space = #(magstep -4)
          \override StaffSymbol.thickness = #(magstep -4)
          firstClef = ##f
        }
        {\autoBeamOff a16 ^\markup { \huge \italic "ossia по В. Несторова"} fis16 g a g8. fis16 g2}
      >>
      \break | % 15

      \tempo "rall." f?16 es16
      d16  cis16  d2
      \times 2/3  {
        \tempo "a tempo" c8 bes8
        a8
      }
      | % 16
      \time 3/4  | % 16
      bes2
      \times 2/3  {
        a8  bes8  c8
      }
      \break | % 17
      d4.  c8  d16 ( [  c16
      ) ]  bes16  a16 | % 18
      bes2
      \times 2/3  {
        a8   bes8  c8
      } \time 2/4 \break | % 19
      d4.  c8 |
      \times 2/3  {
        bes8   a8  g8
      }
      \times 2/3  {
        fis8   g8    a8
      } |
      \tempo "rit." g2
      \bar ":|."

    }

    \addlyrics {
      Ски -- тах __  се __  по го -- ри
      и пла -- ни -- ни. Е -- дин Не --
      зна -- ен ме "при-" -- дру -- жа  --
      ва -- ше. Кач -- вах -- ме и сли
      -- зах -- ме "пла-" -- "нин-" -- ски свет --
      ли вър -- хо -- ве и хо -- дей --
      ки, Той ви -- на -- ги с~мен бе.
      Там го -- ре ви -- дях __  аз Не --
      го -- ва -- та Свет -- ли -- на, що
      ме о -- за -- ри, и ка -- за Той:
      „Пом -- ни, че тряб -- ва го --
      ре да си, слез -- ни и знай -- на
      вси -- чки по -- ле -- зен бъ --
      ди“.
    }

    \header {
      title = \titleFunc #'ref_desc_12 "Скитах се по гори и планини" "Skitah se po gori i planini"
    }

    \midi{}

  } % score


} % bookpart
