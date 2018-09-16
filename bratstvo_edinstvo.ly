\markup {  \vspace #1.9 }


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Tempi di marcia" 4 = 100
  
  \autoBeamOff
  
  d'4 g'8 a'8 | b'4 e''4 | d''8 d''8 e''8 c''8 | b'2| d''4 c''8 b'8 | \break

a'4 a'8 b'8 | c''8 c''8 b'8  a'8| b'2 | e''4 c''8 e''8 | d''4 b'8 c''8 | \break

d''8 d''8 d''8 e''8 | d''2 | a'4 a'4 | a'4 a'4 | a'4 b'8 a'8 | g'2 | \break

d'4 d'4 | d'4 d'4 | d'4 c''8 b'8 | a'2 \repeat volta 2 { b'4 b'4 | b'4 b'4 | \break

b'4 e''8 d''8 | c''2 | c''4 c''4|c''4 c''4| b'4 d''8 b'8 |a'2 |\break

a'4 b'8 a'8 | g'2|} \alternative { { d'4 e'8 d'8 | d'2 | d'4 c''8 b'8| a'2 } { \time 4/4 \break

d'2 e'4 d'4 | b'1 | a'2 b'4 b'4 | g'1| \break } }

}

text = \lyricmode { Брат -- ство е -- дин -- ство ни -- е ис -- ка ме, 
                    
                    зо -- ва на Лю -- бов -- та ни -- е пус -- ка -- ме ми -- ра на Ра -- дост -- та
                    
                    ни -- е ви -- ка -- ме: благ Жи -- вот в~нас да вли -- ва -- ме.
                    
                    благ Жи -- вот в~нас да вли -- ва -- ме. благ Жи -- вот в~нас
                    
                    да вли -- ва -- ме, благ Жи -- вот в~нас да вли -- ва -- ме,
                    
                    да вли -- ва -- ме, да вли -- ва -- ме, да вли -- ва -- ме,
                    
                    да вли -- ва -- ме, да вли -- ва -- ме. 

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Братство, единство / Bratstvo, edinstvo" }
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