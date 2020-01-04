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
    \key a \minor
    \time 2/4 \tempo "Andante" 4 = 60
    \autoBeamOff
    a8 ([ e'8 ]) d'8 c'8 | d'4 e'4 | a8 ([ e'8 ])  d'8 c'8 | d'8 e'8 e'8 e'8 \break |
    c'8 g'8 g'8 g'8 | g'8 ([a'8]) g'8 f'8 | e'2 \repeat volta 2 { c'8 ([ d'8 ]) e'8 a'8 |\break
    b'4 a'4 | c'8 ([ d'8 ]) e'8 a'8 | a'8 ([ c''8 ]) b'8 g'8 | a'2 | } \alternative { {  c'8 ([ d' e' ]) a'  | \break
    b'8 ([ d''8 ]) c''8 b'8 | a'2 | } {  c'8 ([ d'8 e'8 ]) a8 | b8 ([ d'8 ]) c'8 b8 | a2 | \bar "|." \break } }
  }
  
  \addlyrics {
    "1. Зун" ме -- ри ма -- ну, зун ме -- ри -- ма -- нун -- да -- на,
    а -- са -- ви -- та ви -- та нан -- да. Зун ме -- ри 
    ма -- ну, Зун ме -- ри ма -- нун -- да -- на, а -- са -- 
    ви -- та  нан -- да.  а -- са -- ви -- та  нан -- да.    
  }

  \addlyrics {
    "1. Zun" me -- ri ma -- nu, zun me -- ri -- ma -- nun -- da -- na,
    a -- sa -- vi -- ta vi -- ta nan -- da. Zun me -- ri 
    ma -- nu, Zun me -- ri ma -- nun -- da -- na, a -- sa -- 
    vi -- ta  nan -- da.  a -- sa -- vi -- ta  nan -- da.    
  }

  \addlyrics {
    "2. Вси" -- чко е све -- тло, вси -- чко е о -- све -- те -- но
    с~Мой -- та жи -- ва Ви -- де -- ли -- на. 
  }

  \addlyrics {
    "2. Vsi" -- chko e sve -- tlo, vsi -- chko e o -- sve -- te -- no
    s~Moy -- ta zhi -- va Vi -- de -- li -- na. 
  }

  \header {
    title = "Тайната вечеря / Taynata vecherya"
  }

  \midi {
  }
} % score

  \markup \halign #-10 { 
    \column  { 
      \line  \halign #-5 { 
        \bold  { "D. C." }
      }
      \line { 
        \bold { con ripetizione }
      }
    }
  }

} % bookpart
