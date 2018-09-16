


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Moderato" 4 = 80
  
  \autoBeamOff
 
 \repeat volta 2 { d''8 d'' e'' d'' | d''8 c'' c'' b' |b'8 a' a' g' \break }
 
 \repeat volta 2 { b' b' c'' a' | \time 3/4 a' g' g' fis' fis' e' \break 
 
 \time 2/4 e' d' d' d' |} \repeat volta 2 { \time 5/4 b d' b d' b d'| \break

  g' fis' e' c' | c' e' c' e'  c' e' } \break

}

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Тъги скърби / Tagi skarbi" }
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