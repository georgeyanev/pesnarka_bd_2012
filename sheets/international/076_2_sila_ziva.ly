\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref076_2
  \tocItem \markup "Сила жива – Sila živa"
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
          #'((basic-distance . 5.5)
             (padding . -20))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1.7
          \override StaffSymbol.staff-space = #(magstep -2)
          \override StaffSymbol.thickness = #(magstep -2)
          firstClef = ##f
        }
        {\autoBeamOff c''8 ^\markup { \large \italic "ossia по М. Тодорова/ossia nach M. Todoriva"}  d''8 b'8.}
      >>



      | a'8 b' g'8. \bar ":.|.:" \break

      \key g \minor \repeat volta 2 { d'8 d'' d''8. | d'8 c'' c''8. | d'8 bes' bes'8. | a'8 g' g' g'16 | g'4 ~ g'8. } \break |

      \repeat volta 2 { a'8 a' a' c''16 | bes'4 ~ bes'8. | a'8 g' g' g'16 |}
      \alternative { {  g'4 ( ~ g'8 f'16 )  | } {  \override Score.MetronomeMark.outside-staff-priority = #99 \override Score.MetronomeMark.X-extent=#'(0.5 . 2) g'4~\tempo "   Fine" g'8. | \bar "|."} }


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

      \addlyrics {
        Si -- la ži
        -- va, si -- la ži -- va, ka -- ži mi, ka -- ži
        mi de vo -- da iz -- vi -- ra, de vo -- da iz
        -- vi -- ra. Iz -- vi -- ra, iz -- vi -- ra, de
        vo -- da iz -- vi -- ra. Ka -- ži mi, ka -- ži
        mi, ka -- ži mi slad -- ki du -- mi dve. __ Tvoj --
        te du -- mi dve, __ slad -- ki du -- mi dve. __
        dve. __}

        \header {
          title = \titleFunc "Сила жива" "Sila živa"
        }

        \midi{}

      } % score

      \markup \empty-one
      \markup \italic \dc-one-nobold "(По желание песента се изпълнява два пъти/Auf Wunsch wird das Lied zwei Mal gesungen.)"
      \markup \italic \dc-one-nobold "attacca „Скръбта си ти кажи“„Teile mir deine Trauer mit“"

      \markup \empty-two


      % include foreign translation(s) of the song
      \include "../../lyrics/de/076_2_sila_zhiva_lyrics_de.ly"

    } % bookpart
