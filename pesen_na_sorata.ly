


melody = \absolute  {
  \clef treble
  \key d \major
  \time 2/4 \tempo "Andante maestoso" 4 = 60
 
 \autoBeamOff
 
 d''4 a'8 b'8 | a'8 fis'8 d' e' | fis'4 ( e'4 ) | a'2 | g'4 b'8 b'| \break
 
 a'8 g' fis' d' | e' ( fis' e'4 ) | d'2 | \time 4/4 { g'8 (   a'8 ) b'8 } a'4 a'2 \break

{ d'8 ( e'8 ) } fis'8 e'4 d'2 |  \key g \major \time 2/4

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