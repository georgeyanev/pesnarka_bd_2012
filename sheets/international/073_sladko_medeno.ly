\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref073
  \tocItem \markup "Сладко медено – Sladko medeno"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Allegretto" 4 "104"
      \autoBeamOff


      d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2  \bar ":|.:"  |

      a'8 a' a'4 | \break  b'8 b' b'4 | d''8 c'' b' a' | \tempo "                 Fine" g'2  \bar ":|.:" |



      d''4 g'' | fis''4 e'' | \break

      e''4 fis''8 e'' | d''2  |

      <<
        {

          b'4 d'' | c''4 b' |
        }

        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 5.0)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1.5
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          firstClef = ##f
        }
        { b'4^\markup { \large \italic "ossia по М. Тодорова" } c'' | b'4 a' | }
      >>



      a'4 b'8 a' | g'2
      \bar ":|."
    }

    \addlyrics {
      "Слад-" -- ко,
      ме -- де -- но, слад -- ко, ме -- де -- но, ме --
      де -- но, ме -- де -- но, слад -- ко, ме -- де --
      но. От Слън -- це -- то из -- пра -- те -- но,
      от пче -- ли -- те до -- не -- се -- но.
    }
    \addlyrics {
      "Slad-" -- ko,
      me -- de -- no, slad -- ko, me -- de -- no, me --
      de -- no, me -- de -- no, slad -- ko, me -- de --
      no. Ot Slăn -- ce -- to iz -- pra -- te -- no,
      ot pče -- li -- te do -- ne -- se -- no.
    }
    \header {
      title = \titleFunc "Сладко медено" "Sladko medeno"
    }

    \midi{}

  } % score

  \markup \empty-one
  \markup \dc-two "D.C. al Fine" "con ripetizioni"

  \markup \empty-one

  % include foreign translation(s) of the song
  \include "../../lyrics/de/073_sladko_medeno_lyrics_de.ly"

} % bookpart
