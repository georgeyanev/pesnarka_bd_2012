


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Andante" 4 = 88
  
  
 
 b'4 e'4 | % 2
  b'4 e'4 | % 3
  a'4. ( b'8 ) | % 4
  g'4 \autoBeamOff e'8. fis'16 | % 5
  \autoBeamOn g'8 ( fis'8 ) e'8 ( dis'8 ) | % 6
  e'2 | % 7
  c''4 \autoBeamOff b'8. ais'16 \break | % 8
  b'4. e'8 | % 9
  a'4 \autoBeamOn g'8. ( fis'16 ) | 
  e'2 | % 11
  c''4 \autoBeamOff b'8. ais'16 | % 12
  b'4. e'8 | % 13
  \autoBeamOn fis'8 ( a'8 ) g'8 ( fis'8 ) | % 14
  e'2 \bar "|."



}

text = \lyricmode {


"Ра" -- "дост,"
  "Ра" -- "дост," "Ра" -- "дост" "на" "Жи" -- "во" -- "та" "ми," "ти"
  "ве" -- "се" -- "лиш" "сър" -- "це" -- "то" "ми," "ти" "ве" -- "се"
  -- "лиш" "сър" -- "це" -- "то" "ми."
 
 
}

textL = \lyricmode { Freu -- de, Freu -- de, Freu -- -- de mein -- es Le -- e -- -- bens
                     
                     du er -- freu -- st mei -- n He -- rz, du er -- freu -- st, mei -- n He -- rz.  
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Radost / Radost" }
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