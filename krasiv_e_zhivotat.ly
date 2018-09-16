


melody = \absolute  {
  \clef treble
  \key a \major
  \time 2/4 \tempo "Moderato" 4 = 88
 \partial 8
 
 \autoBeamOff
 
\repeat volta 2 {  e'8 | a'4 a'8. b'16 | cis''4 a'8. a'16 | cis''8. cis''16 d''8. cis''16 | b'2 | e''4 e''8. ( [ d''16 ] ) \break |
 
cis''4 a' | b'8 b' cis''8. b'16 | a'2 | e''4 e''8. ( [ d''16 ] ) | cis''4 a' |  b'8 b' cis''8.^\rit b'16 | } \break



                  


}

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Красив е животът / Krasiv e zhivotat" }
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