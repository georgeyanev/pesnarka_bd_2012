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
    \key g \minor
    \time 3/4 \tempo "Adantino" 4 = 72
    \autoBeamOff
    \partial 4
    d'4 | g'2 d'4 | bes'2 a'4 | g'4 fis' g' |  a'4 d' es'  \break
    d'2 d'4 |  d''2 g'4 | es''2 d''4 | c''4 bes' a' \break |
    bes'4 c'' d'' | a'2 a'4 | f''2 d''4 |  g''2 \fermata f''4 \break | 
    es''4 d'' c'' | bes'4 c'' d'' ( | d''4 ) r a' | c''2 a'4 \break | 
    d''2 a'4 | c''4 bes' a' | g'4 fis' a' | g'2 r4 | \time 2/4 \break |
    \repeat volta 2 { \bar ".|:-||" d''8 d'' es'' es'' | d''8 c'' d''4 | c''8 c'' d'' c'' \break | 
    c''8 a' bes'4 | bes'8 c'' d'' es'' | es''8 es'' d''4 \break |
    a'8 c'' bes' a' | fis'8 a' g'4   \break
  }
  }
  
  \addlyrics {
     Ста -- ни, ста -- ни и Гос -- под ще те о -- жи -- ви;
     ста -- ни, ста -- ни и Гос -- под ще те въз --
     кре -- си; ста -- ни, ста -- ни и с~Лю -- бов --
     та за -- поч -- ни; ста -- ни, ста -- ни и в~Ис
     -- ти -- на се об -- ле -- чи. В~Ис -- ти -- на
     се об -- ле -- чи и със не -- я все гра -- ди:
     тя ще те и об -- но -- ви, и с~Дух ще те о
     -- за -- ри.
  }
  
  
   \addlyrics {
     
     Sta -- ni, sta -- ni i Gos -- pod shte te o -- zhi -- vi;
     sta -- ni, sta -- ni i Gos -- pod shte te vaz --
     kre -- si; sta -- ni, sta -- ni i s~Lyu -- bov --
     ta za -- poch -- ni; sta -- ni, sta -- ni i v~Is
     -- ti -- na se ob -- le -- chi. V~Is -- ti -- na
     se ob -- le -- chi i sas ne -- ya vse gra -- di:
     tya shte te i ob -- no -- vi, i s~Duh shte te o
     -- za -- ri.
     
     }
  
  \header {
    title = "Стани, стани / Stani, stani"
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