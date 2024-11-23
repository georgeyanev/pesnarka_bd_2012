\version "2.24.4"

\include "include/globals.ily"
\bookpart {
  \label #'ref063
  \tocItem \markup "Дишай дълбоко"
  \include "include/bookpart-paper.ily"
  \paper {
      print-first-page-number = ##t
      bookpart-level-page-numbering = ##t
  print-page-number = ##t
      first-page-number = #42
}
\score {
    \include "include/score-layout.ily"

    \new Voice = "mainVoice" \absolute  {
      \clef treble
      \key d \major
      \time 2/4
      \tempoFunc "Tempo di marcia" 4 "100"
      \autoBeamOff

      a'4 b'8. a'16 | fis'4 d' | a'8. a'16 b'8 b' | a'2 b'4 a'8. g'16 | fis'4 d' | \break
      e'8. e'16 fis'8 e' | d'2 \bar ":|.|:" |
      a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' | \break  a'2 |
      b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \bar ":|." \break |

      a'4 b'8. a'16 | fis'4 d' | a'4 b'8. b'16 | a'2 b'4 a'8. g'16 | fis'4 d' | \break
      e'4 fis'8. e'16 | d'2 \bar ":|.|:" |
      a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' | \break  a'2 |
      b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \bar ":|." \break |

      a'4 b'8. a'16 | fis'4 d' | a'4 b'8. b'16 | a'2 b'4 a'8. g'16 | fis'4 d' | \break
      e'8. e'16 fis'8 e'| d'2 \bar ":|.|:" |
      a8 d' d' d' | a8 fis' fis' fis' | fis'8. e'16 fis'8 g' | \break  a'2 |
      b'8. b'16 b'8 b' | a'8 d'' a' g' |  fis'8 fis'8 e'8 e'8|  d'2 \bar ":|." \break |

    }

    \addlyrics {
      \set stanza = "1. " Ди -- шай дъл -- бо -- ко, с~ве -- се -- ло сър -- це
      и на жи -- во -- та рад -- вай се, де -- те.
      Въз -- ду -- хът е жи -- ва си -- ла ви -- на -- ги за нас.
      Ди -- шай, ди -- шай и пак ди -- шай, ди -- шай да си здрав!

      \set stanza = "2. " Ко -- га дъл -- бо -- ко ди -- шаш, де -- те,

      ще и -- маш здра -- во, доб -- ро сър -- це.

      Здра -- во сър -- це,

      доб -- ро кръ -- во -- об -- ра -- ще -- ни -- е,

      си -- лен сто -- мах, здра -- во тя -- ло

      ще и -- маш, де -- те.


      \set stanza = "3. " Ко -- га дъл  -- бо -- ко ди -- шаш, де -- те,

      тя -- ло -- то ти из -- пра -- ве -- но да е.

      Пра -- ва стой -- ка, бод -- ра крач -- ка,

      с~по -- глед все на -- пред.

      Ди -- шай, ди -- шай и пак ди -- шай,

      ди -- шай ти на -- вред.
    }


    \header {
      title = \titleFunc #'ref_desc_1 "Дишай дълбоко" "Dišaj dălboko"
    }

    \midi{}

  } % score

} % bookpart
