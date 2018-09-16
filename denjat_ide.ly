


melody = \absolute  {
  \clef treble
  \key c \minor
  \time 2/4 \tempo "Andante" 4 = 60
 
 c'4 es'4 | es'8 \noBeam c'8 { b8 ( c'8 d'8 ) } | g2| c'4 es'4 | g'4 a'8. a'16 | g'2 | \break
 
 



}

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Песен на зората / Pesen na sorata" }
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