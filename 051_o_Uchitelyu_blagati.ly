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
    \time 3/4 \tempo "Larghetto" 4 = 58
    \partial 4
    \autoBeamOff
    f'8 a' c''4 c'' f''8 a' | c''4 c'' f'8 a' | c''4 c'' f''8 e'' \break
    d''2 d''8 c'' \repeat volta 2 { | bes'4 d'' c''8 bes' | a'4 c'' f'8 g' \break |
    a'4 c'' g'8 c'8 |} \alternative { { f'2 d''8 c''  | } { f'2. | \break } } \bar "|."
  }
  
  \addlyrics {
    О, У -- чи -- те -- лю бла -- га -- ти, теб из -- пъл -- ва До -- бри -- 
    на. Твой -- те ду -- ми са кри -- ла -- ти, пъл -- ни 
    с~Мъ -- дрост, Свет -- ли -- на. Твой -- те на.
  }

  \addlyrics {
    O, U -- chi -- te -- lyu bla -- ga -- ti, teb iz -- pal -- va Do -- bri -- 
    na. Tvoy -- te du -- mi sa kri -- la -- ti, pal -- ni 
    s~Ma -- drost, Svet -- li -- na. Tvoy -- te na.
  }

  
  \header {
    title = "О, Учителю благати / O, Uchitelyu blagati"
  }

} % score

\markup { \hspace #20 \vspace #10
   \fontsize #+5 {
     Missing text here ...
   }
}


} % bookpart
