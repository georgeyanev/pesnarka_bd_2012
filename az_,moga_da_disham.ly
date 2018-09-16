\version "2.18.2"



melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Moderato" 4 = 88
  
  \autoBeamOff
 
g4 s4 \repeat volta 2 {
    | % 2
    c'4 c'8. d'16 | % 3
    e'4 c'4 | % 4
    g'4 e'8. f'16 | % 5
    \time 3/4  g'2 a'4 |  \break
    \time 2/4  g'4 e'8. f'16 | % 7
    e'4 c'4 | % 8
    d'4 e'8. d'16 | % 9
    \time 3/4
  }
  \alternative {
    {
      c'2 g4 | \barNumberCheck #10
      c'2 s4
    }
  }
}




text = \lyricmode {Аз мо -- га
  да ди -- шам ве -- че до -- бре, аз мо -- га
  да ди -- шам ве -- че до -- бре. \skip4 бре.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Аз мога да дишам / Az moga da disham" }
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