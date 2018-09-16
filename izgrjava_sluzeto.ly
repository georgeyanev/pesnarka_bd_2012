


melody = \absolute  {
  \clef treble
  \key g \major
  \time 3/4 \tempo "Andantino" 4 = 69
 \partial 4
 
 b4  |  d'2 d'4 | g'2 e'4 | d'2. | d'2 g'4 | b'2 a'4 \break | 

g'2. | a'2 b'4 | c''2 b'4 | d''2 c''4 | b'2 a'4 |  g'2 \break

}

text = \lyricmode {   Из -- гря --
  ва Слън -- це -- то, пра -- ща Свет -- ли -- на,
  но -- си Ра -- дост за Жи -- во -- та тя.

 
 
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