\version "2.24.4"

\include "include/globals.ily"

"rightBraces063" = \markup {
  \column {
    % repeat braces
    \translate #'(0 . -0.7 )
    \right-brace #20

    \translate #'(0 . -6.5 )
    \right-brace #38

    \translate #'(0 . -6.0 )
    \right-brace #20

    \translate #'(0 . -6.5 )
    \right-brace #38
  }
  \column {
    % repeat numbers
    \translate #'(0 . -1.2 )
    2

    \translate #'(0 . -7.0 )
    2

    \translate #'(0 . -11.9 )
    2

    \translate #'(0 . -9.0 )
    2
  }
}

\bookpart {
  \label #'ref063
  \tocItem \markup "Дишай дълбоко – Dišaj dălboko"
  \include "include/bookpart-paper.ily"
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


    \addlyrics {
      \set stanza = "1. " Di -- šaj dăl -- bo -- ko, s~ve -- se -- lo săr -- ce
      i na ži -- vo -- ta rad -- vaj se, de -- te.
      Văz -- du -- hăt e ži -- va si -- la vi -- na -- gi za nas.
      Di -- šaj, di -- šaj i pak di -- šaj, di -- šaj da si zdrav!

      \set stanza = "2. " Ko -- ga dăl -- bo -- ko di -- šaš, de -- te,

      šte i -- maš zdra -- vo, dob -- ro săr -- ce.

      Zdra -- vo săr -- ce,

      dob -- ro kră -- vo -- ob -- ra -- šte -- ni -- e,

      si -- len sto -- mah, zdra -- vo tja -- lo

      šte i -- maš, de -- te.


      \set stanza = "3. " Ko -- ga dăl  -- bo -- ko di -- šaš, de -- te,

      tja -- lo -- to ti iz -- pra -- ve -- no da e.

      Pra -- va stoj -- ka, bod -- ra krač -- ka,

      s~po -- gled vse na -- pred.

      Di -- šaj, di -- šaj i pak di -- šaj,

      di -- šaj ti na -- vred.
    }


    \header {
      title = \titleFunc "Дишай дълбоко" "Dišaj dălboko"
    }

    \midi{}

  } % score

  % include foreign translation(s) of the song
  \include "../../lyrics/de/063_dishay_dalboko_lyrics_de.ly"

} % bookpart
