\version "2.24.3"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref107
  \tocItem \markup "При всичките условия – Pri vsičkite uslovija"
  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \relative c' {
      \clef treble
      \key f \major
      \time 6/8
      \tempoFunc "Allegretto" 4. "84"
      \partial 8
      c'8 | c4 bes8 a4 g8 | f4 d8 c4. | g'4  g8 g8 (a b)  | \break

      \time 3/4 \tempo \markup {
        % make tempo note smaller
        \concat {
          \normal-text { "        " }
          \teeny \general-align #Y #DOWN \note {4.} #0.8
          \normal-text { " = " }
          \teeny \general-align #Y #DOWN \note {4} #0.8
        }
      }
      c2 \tuplet 3/2 { g4 g8} | c2 \tuplet 3/2 { a4 a8 } | d4 (c) \tupletUp \tuplet 3/2 { b b8 } | \tupletNeutral \break

      \tempo "                  Fine" c2  \bar "!!" \key d \minor a8 ( f8 ) \autoBeamOff \repeat volta 2 {
        e4 d a8. a16 | \time 2/4 d4. f8 | \break
        e4 a,8. a16 | d8 [(e8)] f8 e |
      }
      \alternative {
        {\time 3/4 d2 a'8 [(f)] }
        {\time 2/4 d4. }
      }
      \bar "|."

    }

    \addlyrics {
      При всич -- ки -- те у -- сло -- ви -- я на жи -- во -- та

      не гу -- би сво -- я мир, сво -- я мир.

      Жи -- во -- тът е кра -- сив,

      ко -- га -- то чо -- ве -- кът е смел.

      Жи -- смел.
    }
    \addlyrics {
      Pri vsič -- ki -- te u -- slo -- vi -- ja na ži -- vo -- ta

      ne gu -- bi svo -- ja mir, svo -- ja mir.

      Ži -- vo -- tăt e kra -- siv,

      ko -- ga -- to čo -- ve -- kăt e smel.

      Ži -- smel.
    }

    \header {
      title = \titleFunc "При всичките условия "" Pri vsičkite uslovija"
    }

    \midi{}

  } % score

  \markup \empty-one

  \markup \dc-one "D.C. al Fine"


  % include foreign translation(s) of the song

  \markup \vspace #3
  \include "../../lyrics/de/107_pri_vsichkite_uslovija_lyrics_de.ly"

} % bookpart
