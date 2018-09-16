


melody = \absolute  {
  \clef treble
  \key bes \major
  \time 3/4 \tempo "Moderato" 4 = 88
  
  \autoBeamOff
 
 {
    g8 a8 bes8
  }
  a2 | % 2
  \times 2/3  {
    a8 bes8 c'8
  }
  bes2 | % 3
  \times 2/3  {
    bes8 c'8 d'8
  }
  es'2 \break | % 4
  \times 2/3  {
    d'8 e'8 fis'8
  }
  g'2 | % 5
  a'4 \times 2/3 {
    bes'8 a'8 g'8
  }
  \times 2/3  {
    fis'8 ( g'8 ) a'8
  }
  | % 6
  g'4 \fermata a'2 \break | % 7
  \times 2/3  {
    bes'8 a'8 g'8
  }
  es'4 ( fis'4 ) | % 8
  g'4 -- g'4 -- g'4 -- | % 9
  g'2. 



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