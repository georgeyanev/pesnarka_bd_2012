\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##f % do spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute  {
    \clef treble
    \key f \major
    \time 2/4 \tempo "Moderato" 4 = 52
    \autoBeamOff  
 
    c'4 f'8. g'16 | \time 3/4 a'4. g'8 a' bes' | c''4. c''8 e'' d'' | c''4. d''8 c'' bes' \break | 
 
    \time 4/4  a'2 c'4 f'8. g'16 | a'4 f''2 g''8. f''16 | \time 3/4  e''4. d''8 e'' d'' | c''4. d''8 c'' bes' \break |

    a'2 c''4 | \time 4/4  bes'8. a'16 g'2 bes'4 | \time 3/4  d''8 d'' c''4. c''8 \break | 

    \time 4/4  f''8 f'' e''4. d''8 c'' bes' | \time 3/4  a'2 c''4 | \time 4/4  bes'8. a'16 g'2 bes'4 \break |

    \time 3/4  d''8 d'' c''4. c''8 \time 4/4  f''8 f'' e''4. d''8 c'' bes' | \time 2/4  a'2 \bar "|."
 
  }
  
  \addlyrics {
    Бла -- го -- сло -- вен от Бо -- га ти, У -- чи -- те --
    лю на Лю -- бов -- та, за -- де -- то тък -- мо
    в~те -- зи дни до -- не -- се Мир и Свет -- ли -- на. 
    До -- бре до -- шъл, до -- бре до -- шъл,
    У -- чи -- те -- лю на Лю -- бов -- та; до --
    бре до -- шъл, до -- бре до -- шъл, У -- чи --
    те -- лю на Мъ -- дрост -- та.
  }

  \addlyrics {
    Bla -- go -- slo -- ven ot Bo -- ga ti, U -- chi -- te --
    lyu na Lyu -- bov -- ta, za -- de -- to tak -- mo
    v~te -- zi dni do -- ne -- se Mir i Svet -- li -- na. 
    Do -- bre do -- shal, do -- bre do -- shal,
    U -- chi -- te -- lyu na Lyu -- bov -- ta; do --
    bre do -- shal, do -- bre do -- shal, U -- chi --
    te -- lyu na Ma -- drost -- ta.
  }


  \header {
    title = "Поздрав на Учителя / Pozdrav na Uchitelya"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}

} % bookpart
