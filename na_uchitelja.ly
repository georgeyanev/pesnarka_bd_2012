


melody = \absolute  {
  \clef treble
  \key e \minor
  \time 3/4 \tempo "Lento" 4 = 50
   
   \partial 4
  
  \autoBeamOff
  
  e'8 fis'8 | g'4 e'4 b'8 a'8 | g'4 fis'4 e'8 fis'8 | g'4 e'4 g'8 a'8 |  b'2 | e''8  e''8 \break
  
   d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 a'8 | b'2 e''8 e''8 \break
   
   | d''4 c''4 b'8 b'8 | a'4 g'4 fis'8 g'8 | b'4 a'4 g'8 fis'8 | e'2 | \break
  


 
 
 



}

text = \lyricmode { На У --
  чи -- те -- ля по -- ко -- рен аз ще слу -- жа
  до кон -- ца. Той за мен е път от -- во --
  рен, що ме во -- ди към От -- ца. Той за мен
  е път от -- во -- рен, що ме во -- ди към От
  -- ца.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "На Учителя ще служа / Na Uchitelja ste sluzha" }
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