\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref200
  \tocItem \markup "Вътрешният глас на Бога"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \relative c' {
      \clef treble
      \key g \minor
      \time 3/4
      \tempoFunc "Larghetto" 4 "60"
      \autoBeamOff

      \partial 4
      d4^\p | % 2
      d'2 c4 | % 3
      bes2 a4 | % 4
      <<
        {
          g4 \times 2/3 {
            fis8 ( [g8] ) a8
          }
          g4^\> ~ | % 5
          g2 \! bes4 \break | % 6
        }
        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 9.5)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        {
          \key g \minor
          g2_\markup {  "ли -                      му      се -   нет.            Ту" }  ^\markup { \large \italic "ossia по П. Ганев"}     \times 2/3 {
            fis8 ( [g8] )
            \once \override Hairpin.to-barline = ##f
            \once \override Hairpin.shorten-pair = #'(4 . -4)
            a8^\>
          } |
          g2\! bes4 \break |
        }
      >>
      a2^\p g4 | % 7
      fis2 es4 | % 8
      d2 c8 ( [es8] ) | % 9
      d2 \breathe  c4^\< \break
      es2 d4 | % 11
      d2 bes'4 | % 12
      a2 \!  g4 | % 13
      d'2. \break | % 14
      es8 ( [d8 cis8 d8] )  bes8.^\>  ( [a16] ) | % 15
      bes2 a4 | % 16
      g2 \! d'4^\p \break | % 17
      \time 4/4  c2
      \times 2/3  {
        bes8 [( a8 g8 )]
      }
      \times 2/3  {
        fis8 ( [g8 a8] )
      }
      | % 18
      \time 3/4  g2 es4 \break | % 19
      \tempo "rall." d2 c4 |
      d2 fis4^\ppp | % 21
      g2. ( | % 22
      g2 )\bar "|."
    }

    \addlyrics {
      Ве -- ну Ба
      -- хар Са -- ли -- му  се -- нет. __ Ту -- си Ба --
      хар. Ве -- ну се -- нет. Ту -- си Ба -- хар, Ве
      -- ну Ба -- хар Са -- ли -- му се -- нет. Ве --
      ну ил -- би -- ют. Би -- ют, Би -- ют, Би -- ют. __}

      \header {
        title = \titleFunc #'ref_desc_15 "Вътрешният глас на Бога " "Vătrešnijat glas na Boga"
        subtitle = \markup \normal-text \huge "(медитация)"

      }


      \midi{}

    } % score

    \markup \dc-one "D.C."


  } % bookpart

  % Più mosso
  %
