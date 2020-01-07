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
  \time 2/4 \tempo "Allegretto" 4 = 104
  
  \autoBeamOff
 
d'8 d' e' fis' |g'2 | a'8 g' fis' e' | d'2   \break | 

\repeat volta 2 {  a'8 a' a'4 | b'8 b' b'4 | d''8 c'' b' a' |  g'2 }  \break |


\repeat volta 2 { d''4 g'' | fis''4 e'' | e''4 fis''8 e'' | d''2 \break | 
                  
    b'4 d'' | c''4 b' | a'4 b'8 a' | g'2 }

}

\addlyrics {Слад -- ко,
  ме -- де -- но, слад -- ко, ме -- де -- но, ме --
  де -- но, ме -- де -- но, слад -- ко, ме -- де --
  но. От Слън -- це -- то из -- пра -- те -- но,
  от пче -- ли -- те до -- не -- се -- но. }
  
 \addlyrics {Slad -- ko, me -- de -- no, slad -- ko, me --
  de -- no, me -- de -- no, me -- de -- no, slad -- ko, me --
  de -- no. Ot Slan -- tse -- to iz -- pra -- te -- no, ot pche --
  li -- te do -- ne -- se -- no. }
  
  \header {
    title = "Сладко медено / Сладко медено"
  }
  
  \midi { }

} % score
} % bookpart
