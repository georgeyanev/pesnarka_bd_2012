


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 3/4 \tempo "Adantino" 4 = 72
  \partial 4
  
  \autoBeamOff
  
 d'4 | g'2 d'4 | bes'2 a'4 | g'4 fis' g' |  a'4 d' es'  \break
 
 d'2 d'4 |  d''2 g'4 | es''2 d''4 | c''4 bes' a' \break |
 
 bes'4 c'' d'' | a'2 a'4 | f''2 d''4 |  g''2 \fermata f''4 \break | 

es''4 d'' c'' | bes'4 c'' d'' ( | d''4 ) r a' | c''2 a'4 \break | 

d''2 a'4 | c''4 bes' a' | g'4 fis' a' | g'2 r4 \break |

\time 2/4  \repeat volta 2 { d''8 d'' es'' es'' | d''8 c'' d''4 | c''8 c'' d'' c'' \break | 
 
 c''8 a' bes'4 | bes'8 c'' d'' es'' | es''8 es'' d''4 \break |
 
 a'8 c'' bes' a' | fis'8 a' g'4   \break
 
 
 
 \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark #'extra-offset = #'( -2.0 . -13.0 ) 
    \mark \markup {  \fontsize #-2 \bold "D.C."  }
 
}

}

text = \lyricmode { Ста -- ни, ста -- ни и Гос -- под ще те о -- жи -- ви;
  ста -- ни, ста -- ни и Гос -- под ще те въз --
  кре -- си; ста -- ни, ста -- ни и с~Лю -- бов --
  та за -- поч -- ни; ста -- ни, ста -- ни и в~Ис
  -- ти -- на се об -- ле -- чи. В~Ис -- ти -- на
  се об -- ле -- чи и със не -- я все гра -- ди:
  тя ще те и об -- но -- ви, и с~Дух ще те о
  -- за -- ри.

 
 
}

textL = \lyricmode {Sta -- ni, sta -- ni i Gos -- pod shhe te o -- shi -- vi;
  sta -- ni, sta -- ni i Gos -- pod ste te vyz --
  kre -- si; sta -- ni, sta -- ni i s~Lju -- bov --
  ta za -- potsch -- ni; sta -- ni, sta -- ni i v~Is
  -- ti -- na se ob -- le -- tschi. V~Is -- ti -- na
  se ob -- le -- tschi i sys ne -- ja vse gra -- di:
  tja ste te i ob -- no -- vi, i s~Duch ste te o
  -- za -- ri.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvaria" }
  %subtitle = \markup \center-column { " " \vspace #1 } 
  
  tagline = " " %supress footer Music engraving by LilyPond 2.18.0—www.lilypond.org
 % arranger = \markup { \fontsize #+1 "Контекстуализация: Йордан Камджалов / Contextualization: Yordan Kamdzhalov" }
  %composer = \markup \center-column { "Бейнса Дуно / Beinsa Duno" \vspace #1 } 

}
  <<
    \new Voice = "one" {
      
      \melody
    }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textL
  >>
 
}