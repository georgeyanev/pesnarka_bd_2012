


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 6/4 \tempo "Andantino" 4 = 72
 
 a2.  a2 \fermata a4\p | \time 4/4  g'2 f'2 | f'2 d'4  e'4 | \time 6/4 f'2 d'2 g'4\rest e'4 | \break
 
 \time 4/4 g'4 f'4 e'4 d'4 | \time 4/4 e'2. g'4\rest |



}

text = \lyricmode {Бу -- дя. Из -- гря -- ва мо -- е -- то Слън -- це във мо -- я -- та ду -- ша. 

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Химни на Слънцето / Himni na slunzeto" }
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