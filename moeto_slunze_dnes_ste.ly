\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key f \major
  \time 9/16 \tempo "Maestoso" 8 = 132
  
  \autoBeamOff
 
d'8 ^\p d'8 f'8 a'8. | % 2

d''8 ~ d''8 d''8 ~ d''8. \! | % 3

\time 8/16  f''8. -- e''8 d''8. | % 4

e''8. d''8 ~ d''8. \break | % 5





}

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Моето слънце днес ще изгрее / Moeto slance dnes ste izgree" }
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