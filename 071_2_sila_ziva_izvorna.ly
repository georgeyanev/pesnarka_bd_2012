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
    ragged-last = ##f % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout

  \new Voice \absolute {
    
   \clef treble
  \key g \major
  \time 2/4 \tempo "Moderato" 4 = 84

\autoBeamOff

\repeat volta 2 { d'8 d' g' g' | a'8 a' b' b' | d''4 d'' | e''8 c'' c'' b' \break |

 d''8 c'' b' a' |} \alternative { { \time 3/4 a'4 g'2 |} { \time 4/4  a'4 g'2 d'8. e'16 | } } \repeat volta 2 { \time 3/4 d'2 d'8. e'16 \break | 
 
    d'4. g'8 g'8. a'16 | \time 4/4 } \alternative  { {b'4 g'2 d'8. e'16 | } { b'4 g'2 } }


  }
  
  \addlyrics {Си --
  ла жи -- ва, из -- вор -- на, те -- чу -- ща, си
  -- ла жи -- ва, из -- вор -- на, те -- чу -- ща.
  чу -- ща. Зун ме -- зун, зун ме -- зун, би --
  ном ту ме -- то. Зун ме -- ме -- то. }
  
  \addlyrics {Si --
  la zhi -- va, iz -- vor -- na, te -- chu -- shta, si
  -- la zhi -- va, iz -- vor -- na, te -- chu -- shta.
  chu -- shta. Zun me -- zun, zun me -- zun, bi --
  nom tu me -- to. Zun me -- me -- to.}
  
  \header {
    title = "Сила жива, изворна / Sila zhiva, izvorna"
  }
\midi{}

} % score
} % bookpart
