\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref095
  \tocItem \markup "Вдъхновение – Vdăhnovenie"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"


    \new Voice \absolute  {
      \clef treble
      \key c \major
      \time 6/4
      \tempoFunc "Lento" 4 "50"
      \autoBeamOff
      \repeat volta 3 {
        g4 c' e' c' g2 | g4 c' e' c' g2 | \time 4/4  e'4 g' c''2  |

        b'4 ( a' ) g'2 | \break \time 6/4
      } \alternative {
        { a'4 f' a' g' e'2 | g'4 e' f' d' c'2 |  }
        {
          \once \override Score.TimeSignature.break-visibility = ##(#f #f #t)
          \time 6/4 a'4 ( f' a' g' ) e'2 |  g'4 e'8 e' f'4 d' c'2
        }
      }
      \bar "|."
    }

    \addlyrics {
      Вдъх -- но -- ве -- ни -- е,
      вдъх -- но -- ве -- ни -- е,
      вдъх -- но -- ве -- ни -- е, "вдъх-" -- но -- ве -- ни -- е,
      "вдъх-" -- но -- ве -- ни -- е, ти __ си бла -- "го-" --
      "сло-" -- ве -- ни -- е.

    }

    \addlyrics {
      Vdăh -- no -- ve -- ni -- e,
      vdăh -- no -- ve -- ni -- e,
      vdăh -- no -- ve -- ni -- e, vdăh -- no -- ve -- ni -- e,
      vdăh -- no -- ve -- ni -- e, ti __ si bla -- go --
      slo -- ve -- ni -- e.

    }


    \header {
      title = \titleFunc "Вдъхновение" "Vdăhnovenie"
    }

    \midi{}

  } % score

  \markup \empty-one

  % include foreign translation(s) of the song
  \include "../../lyrics/de/095_vdahnovenie_lyrics_de.ly"

  \markup \empty-three

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
          #'((basic-distance . 5.5)
             (padding . -20))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1.7
          \override StaffSymbol.staff-space = #(magstep -3)
          \override StaffSymbol.thickness = #(magstep -3)
          firstClef = ##f
        }
        { b'4^\markup { \large \italic "ossia по М. Тодорова/ossia nach M. Todorova " } c'' | b'4 a' | }
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
