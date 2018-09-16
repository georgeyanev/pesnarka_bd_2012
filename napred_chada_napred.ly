


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 4/4 \tempo "Tempo di marcia" 4 = 100
  
 \partial 4
 
 \autoBeamOff
 
 d'4 | g'4. a'8 bes'4. a'8 | g'2. d'4 | g'4. a'8 bes'8 bes'8 a'8. a'16| \break

g'2. d''4 | \repeat volta 2 {  g''4. es''8 d''4. cis''8 | d''2 ( d''8 ) d'8 es'8 d'8 | \break

bes'4. bes'8 a'4. a'8 |} \alternative  { { g'2. d''4 | }  { g'2 } } 





}

text = \lyricmode { На -- пред ча -- да на -- пред, но -- се -- те -- сло -- во -- то на -- 
                    
                    вред. Без страх в~жи -- во -- та нов но -- се -- те -- 
                    
                    Прав -- да, Мир Лю -- бов. Без бов!

 
 
}

textL = \lyricmode {
 
 
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