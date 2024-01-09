\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {

  \label #'ref075
  \tocItem \markup "Аум"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {

      \clef treble
      \key c \major
      \time 3/4
      \tempoFunc "Andante" 4 "60"
      \autoBeamOff
      \partial 4

      g4 |  c'2 g4 | e'2 c'4 | g'2. |  f'2. | e'2. | d'2. | c'2 \fermata s4 | \bar "|."
    }

    \addlyrics {
      А -- ум, А
      -- ум, А -- ум, Ом, Ом, Ау -- мен.
    }

    \header {
      title = \titleFunc "Аум" "Aum"
    }

    \midi{}

  } % score

  \markup \dc-one "2 D.C."
  \markup \huge \italic \dc-one-nobold "(песентта се изпълнява три пъти)"

  \label #'ref076_2
  \tocItem \markup "Сила жива"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \absolute {
      \clef treble
      \key g \major
      \time 7/16
      \tempoFunc "Allegretto" 8 "176"
      \autoBeamOff


      g8 ( b ) d'8. | d'8 ( g' ) d'8. | g8 ( b ) d'8. | d'8 ( g' ) d'8. | d'8 g' d'8. \break | % 6

      d'8 g' d'8. | d'8 c'' b'8. | a'8 b' g'8. | d'8 c'' b'8. | a'8 b' g'8. \break |

      \bar ".|:-|"  g'8 b' b'8. | b'8 d'' d''8. |


      <<
        { b'8 d''8 b'8. }

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
        {\autoBeamOff c''8 ^\markup { \huge \italic "ossia" по М.Тодорова}  d''8 b'8.}
      >>



      | a'8 b' g'8. \bar ":.|.:" \break

      \key g \minor \repeat volta 2 { d'8 d'' d''8. | d'8 c'' c''8. | d'8 bes' bes'8. | a'8 g' g' g'16 | g'4 ~ g'8. } \break |

      \repeat volta 2 { a'8 a' a' c''16 | bes'4 ~ bes'8. | a'8 g' g' g'16 |}
      \alternative { {  g'4 ( ~ g'8 f'16 )  | } { g'4~\tempo "   Fine" g'8. | \bar "|."} }


    }

    \addlyrics {
      Си -- ла жи
      -- ва, си -- ла жи -- ва, ка -- жи ми, ка -- жи
      ми де во -- да из -- ви -- ра, де во -- да из
      -- ви -- ра. Из -- ви -- ра, из -- ви -- ра, де
      во -- да из -- ви -- ра. Ка -- жи ми, ка -- жи
      ми, ка -- жи ми слад -- ки ду -- ми две. __ Твой --
      те ду -- ми две, __ слад -- ки ду -- ми две. __
      две. __}

      \header {
        title = \titleFunc "Сила жива" "Sila živa"
      }

      \midi{}

    } % score

    \markup \huge \italic \dc-one-nobold "(По желание песента се изпълнява два пъти.)"
    \markup \huge \italic \dc-one-nobold "attacca „Скръбта си ти кажи“"






  } % bookpart
