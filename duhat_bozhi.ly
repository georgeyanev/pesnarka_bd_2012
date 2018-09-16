


melody = \absolute  {
  \clef treble
  \key c \major
  \time 6/4 \tempo "Andante" 4 = 65
 
c'4 e' g' ( a' ) g'2 | e'4 g' c'' ( \acciaccatura { d''16 c'' b' c'' } d''4 ) c''2 \break |


b'4 d'' c'' ( b'8 a' ) g'2 | e'4 g' a' ( g'8 fis' ) g'2 \break | 
 
 e'4 g' f' e' e' c' | \time 4/4  d'4 e' c'2 \break | 
  
  \time 6/4  e'4 g' f' e' e' c' |  \time 4/4  d'4 e' c'2 \break | 

 \repeat volta 2 { e'4 g' g'2 |    e'4 g' g'2 | e'4 c'' c''2 \break |
    
    \time 6/4  b'4 d'' c'' b' a' g' | \time 4/4  e'4 g' g'2 \break | 
   
   \time 6/4  e'4 g' f' e' e' c' | \time 4/4  d'4 e' c'2
  }

}

text = \lyricmode {Ду -- хът Бо
  -- жи, Ду -- хът веч -- ни, Ду -- хът Свя -- ти,
  Ду -- хът бла -- ги, Кой пъл -- ни сър -- ца ни
  със Лю -- бов, Кой пъл -- ни сър -- ца ни със
  Лю -- бов. 1. Кой пъл -- ни, Кой пъл -- ни, Кой
  пъл -- ни, Кой пъл -- ни сър -- ца ни със Лю --
  бов, Кой пъл -- ни сър -- ца ни със Лю -- бов.

 
 
}

textL = \lyricmode { Du -- hat Bo --
  zhi, Du -- hat vech -- ni, Du -- hat Svya -- ti, Du -- hat Bla
  -- gi, Koy pal -- ni sar -- tsa ni sas Lyu -- bov. Koy pal -- ni
  sar -- tsa ni sas Lyu -- bov.  Koy  pal -- ni, Koy  pal -- ni, Koy  pal -- ni
  Koy  pal -- ni  sar -- tsa ni sas Lyu -- bov, Koy pal
  -- ni sar -- tsa ni sas Lyu -- bov.
 
 
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