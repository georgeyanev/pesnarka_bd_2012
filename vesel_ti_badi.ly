


melody = \absolute  {
  \clef treble
  \key c \major
  \time 6/4 \tempo "Andante" 4 = 63


c''4 ( \acciaccatura { d''16 c'' b' c'' } d''4 ) \autoBeamOff c'' a'8. a'16 g'2 | \time 5/4 g'16 { ( a'8. ) } g'4 \noBeam f'8.e'16 f'2 | \break

\time 4/4   g'8 a'8 b'8 d''8. c''16 b'4 a'4 | g'8. g' 16. e'8 d'8 d'4 c'4 \fermata |\break \time 3/4

f'8. f'16. e'4 f'




}

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #1 "Весел ти бъди / Vesel ti badi" }
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