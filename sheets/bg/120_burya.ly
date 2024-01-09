\version "2.24.2"

\include "include/globals.ily"

\bookpart {
  \label #'ref120
  \tocItem \markup "Буря"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Staff = main  \relative c' {
      \clef treble
      \key bes \minor
      \time 9/8
      \tempoFunc "Lento" 4. "50"
      \autoBeamOff
      bes8 ( [  des8 ) ]  c8  bes4.  a4  bes8
      \override TextScript.extra-offset = #'(2.5 . 2)
      <<
        {
          c4.  f2.  |
        }
        \new Staff \with {
          \override VerticalAxisGroup.default-staff-staff-spacing =
          #'((basic-distance . 6.5)
             (padding . -10))
          \remove "Time_signature_engraver"
          alignAboveContext = #"main"
          fontSize = #-1
          \override StaffSymbol.staff-space = #(magstep -4)
          \override StaffSymbol.thickness = #(magstep -4)
          firstClef = ##f
        }
        {  c4.^\markup { \huge \italic "ossia по К.Икономов" }  f,2.}
      >>



      f'8  ges8  f8  es8  des8 c8  es4. \break |
      c2. es8 ( [  d8 ) ]  es8 |
      \time 6/8
      f4.  bes,4. | % 8
      des4.  c4  bes8 | % 9
      \acciaccatura {  bes16[c16] }  bes4.

      a4.  \break | % 11
      des4.  f8  f8  f8 | % 12
      as4.  ges4  f8 | % 13
      f4. (f4) es8 | es2.   |
      \break

      \key f \minor \bar ".|"  | % 15


      \bar ".|:-||"   \tempoFunc "   Più mosso" 4 "66" \time 9/8 f4  f8  f4.  c'4. |

      des4.  c2.|
      c8 ( [ des8  c8 ) ]  bes4.  as4. | \break

      f2. (f4.)| \bar ":|.|:"

      \time 6/8 c'4. ( c8 ) c8  c8 |
      f4. ~  f8  e8  f8 | % 21

      g4. ( ~  g8 [  f8 des8 ) ] | \break

      \time 9/8
      c4. ~  c4  c8 bes8 -- as8 --  bes8 -- |
      as4. f2.   \bar ":|."  |  \key f \major
      \bar ".|:" a8  bes8  c8  f,4  f8 d'4 (bes8 ) | \break
      g2. e8  [ (f8) ] g8 |
      \time 6/8 c4.  f,4. | a4.  g4  g8 | f2. \bar ":|."


    }

    \addlyrics {
      Тъж -- на ми е ду -- ша -- та.
      Скръб и пе -- чал ме об -- зе --
      мат.  Сил -- на бу -- ря
      в~мен се пов --  ди -- га,
      но ни -- ко -- го не об -- ви -- ня
      -- вам аз. Бу -- ря -- та е бу -- ря,
      но __  в~мен е Той. __  Бу --
      ря -- та мен  не раз -- би --
      ра, __ но аз я раз -- би
      -- рам. Бу -- ря -- та ме раз --
      търс  -- ва за __  До -- бро --
      то, що е във мен.
    }

    \header {
      title = \titleFunc "Буря" "Burja"
    }

    \midi{}

  } % score

} % bookpart
