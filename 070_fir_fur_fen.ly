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
  \key g \minor
  \time 3/4 \tempo "Adagio" 4 = 54
  \autoBeamOff
  \partial 4
  
  d'8. d'16 | g'2 a'8. bes'16 |  g'4 d'2 | \time 4/4  a'8. bes'16 c''4 bes'2 | \break 
 
 a'8. bes'16 g'4 g'2 | \time 3/4  d''8. d''16 d''2 | \time 4/4  es''8. d''16 d''4 c''2 \break
 
 \time 3/4  c''8. c''16 c''2 | \time 4/4  d''8. c''16 bes'4 bes'2 | \time 3/4  a'8. a'16 a'2 \break |

 \time 4/4  bes'8. a'16 g'4 g'2  \repeat volta 2 {| d'4 g'4 bes'4 a'4 |  \time 3/4  g'4 fis'8. fis'16 g'4 \break |
   
 es'8. es'16 d'2 | \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 \break |  
 
 a'4 \fermata g'2 | \time 5/4  \repeat volta 2 { d''4 cis''4 es''4 d''2 | d''4 cis''4 es''4 d''2 \break |
                                                 
 \time 4/4  a'4 bes'4 c''4 bes'4 | \time 3/4  a'4 g'4 fis'4 |  a'4 \fermata g'2
 
 }
 }
  }
  
  \addlyrics {
  Фир -- фюр --
  фен Тао Би Ау -- мен, Тао Би Ау -- мен, Тао Би
  Ау -- мен. Фир -- фюр -- фен Тао Би Ау -- мен.
  Фир -- фюр -- фен Тао Би Ау -- мен, Фир -- фюр --
  фен Тао Би Ау -- мен. Бла -- го -- сла -- вяй,
  ду -- ше мо -- я, Гос -- по -- да; бла -- го --
  сла -- вяй и не за -- бра -- вяй. Бла -- го --
  сла -- вяй, бла -- го -- сла -- вяй, бла -- го --
  сла -- вяй и не за -- бра -- вяй.
  
  }


\addlyrics {
  
    Fir -- fyur --
  fen Tao Bi Au -- men, Tao Bi Au -- men, Tao Bi
  Au -- men. Fir -- fyur -- fen Tao Bi Au -- men.
  Fir -- fyur -- fen Tao Bi Au -- men, Fir -- fyur --
  fen Tao Bi Au -- men. Bla -- go -- sla -- vyay,
  du -- she mo -- ya, Gos -- po -- da; bla -- go --
  sla -- vyay i ne za -- bra -- vyay. Bla -- go --
  sla -- vyay, bla -- go -- sla -- vyay, bla -- go --
  sla -- vyay i ne za -- bra -- vyay.
  
}
  
  
 
  
  % lyrics here
  
  \header {
    title = "Фир фюр фен / Fir fur fen"
  }
  
  \midi {}

} % score

  \markup \halign #-10 { 
    \column  { 
      \line  \halign #-5 { 
        \bold  { "D. C. al Fine" }
      }
      \line { 
        \bold { senza ripetizione }
      }
    }
  } 
} % bookpart
