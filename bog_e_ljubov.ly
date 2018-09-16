\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key g \major
  \time 4/4 \tempo "Largo" 4 = 46
  
  
 
 b8. c'16 a8. b16 c'2 | e'4 d'8. c'16 b2 | g'4 fis'8. g'16 e'4. f'8 | \break
 
 \time 3/4 g'8 a'8 b'2 | \time 4/4 c''8. (d''32 c''32 b'8 c''8 ) a'2 | d''8. c''16 b'8 ( a'8 ) b'2 | \break
 
 a'4. ( b'8 ) a'2 |



}

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Бог е Любов / Bog e Ljubov" }
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