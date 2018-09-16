


melody = \absolute  {
  \clef treble
  \key d \minor
  \time 4/4 \tempo "Senza mizura" 
 
\acciaccatura { g'8 ( } a'2  ) \times 2/3  { g'8 [ f' g'8 ] } s4 | \time 5/4 a'4 a'2 g'4 a' | 
  a'8 ( [ bes' a' g' f' g' ] \grace { a' [ } {} \acciaccatura {
    b'8
    ]
  } {} <c'' b'>4 ) [ <c'' a'>8 ] \break |


}

text = \lyricmode {

 
 
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