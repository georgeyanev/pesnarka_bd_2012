\version "2.24.4"

% include paper part and global functions
\include "include/globals.ily"

\bookpart {
  \label #'ref071_1
  \tocItem \markup "Изгрява слънцето"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #54
}
\score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 3/4
      \tempoFunc "Andantino" 4 "69"
      \partial 4
      \autoBeamOff
      b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break |

      g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4^\markup { \concat {"              (" \fermata ")"}} |  g'2
      \break \bar ":|."

    }

    \addlyrics {
      Из -- гря --
      ва слън -- це -- то, пра -- ща свет -- ли -- на,
      но -- си ра -- дост за жи -- во -- та тя.
    }

    \header {
      title = \titleFunc #'ref_desc_9 "Изгрява слънцето" "Izgrjava Slănceto"
    }

    \midi{}

  } % score

  \markup \huge \italic \dc-one-nobold "attacca „Сила жива, изворна“"

  % include foreign translation(s) of the song

  \markup \vspace #2

  \label #'ref071_2
  \tocItem \markup "Сила жива, изворна"

  \include "include/bookpart-paper.ily"
  \score {
    \include "include/score-layout.ily"

    \new Voice \absolute {
      \clef treble
      \key g \major
      \time 2/4
      \tempoFunc "Moderato" 4 "84"
      \autoBeamOff

      \repeat volta 2 {
        d'8 d' g' g' | a'8 a' b' b' | d''4 d'' | e''8 c'' c'' b' \break |

        d''8 c'' b' a' |
      } \alternative { { \time 3/4 a'4 g'2 |} { \time 4/4  a'4 g'2 d'8. e'16 | } } \repeat volta 2 {
        \time 3/4 d'2 d'8. e'16 \break |

        d'4. g'8 g'8. a'16 |
      }
      \alternative  {
        {\time 4/4 b'4 g'2 d'8. e'16 | }
        {\time 3/4 b'4 g'2 \bar "|."}
      }
    }

    \addlyrics {
      Си --
      ла жи -- ва, из -- вор -- на, те -- чу -- ща, си
      -- ла жи -- ва, из -- вор -- на, те -- чу -- ща.
      чу -- ща. Зун ме -- зун, зун ме -- зун, би --
      ном ту ме -- то. Зун ме -- ме -- то.
    }
    \header {
      title = \titleFunc #'ref_desc_12 "Сила жива, изворна" "Sila živa, izvorna"
    }

    \midi{}

  }


} % bookpart
