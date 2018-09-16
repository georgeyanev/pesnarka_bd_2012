


melody = \absolute  {
  \clef treble
  \key d \major
  \time 3/4 \tempo "Tempo di valzer" 4 = 56
 
g'4. g'8 g'4 | % 2
  a'2 e'4 | % 3
  g'2 f'8 e'8 | % 4
  f'2. | % 5
  b'2 a'8 b'8 | % 6
  c''2 b'4 \break | % 7
  b'2 a'8 b'8 | % 8
  g'2. | % 9
  g'4. g'8 g'4 | \barNumberCheck #10
  e''4. d''8 c''4 | % 11
  c''4. b'8 b'4 | % 12
  a'2. \break | % 13
  g'2 a'8 g'8 | % 14
  e'2 f'4 | % 15
  e'2 d'8 e'8 | % 16
  c'2. \repeat volta 2 {
    | % 17
    c''2 c''4 | % 18
    b'2 f'4 | % 19
    a'2. \break | \barNumberCheck #20
    g'2. | % 21
    e'2 e'4 | % 22
    d'2 d'4 | % 23
    c'2. ~ | % 24
    c'2.
  }
  | % 25
  c'2. ~ | % 26
  c'2 g'4 | % 27
  a'2 g'4 \break | % 28
  f'2 e'8 ( f'8 ) | % 29
  g'2 f'4 | \barNumberCheck #30
  e'2 c''4 | % 31
  a'2 b'4 | % 32
  c''2 a'4 | % 33
  g'2. ( | % 34
  g'2 ) c''4 \repeat volta 2 {
    | % 35
    d''2 c''4 \break | % 36
    b'2 a'8 ( b'8 ) | % 37
    c''2. | % 38
    g'2. | % 39
    a'4 g'4 e'4 | \barNumberCheck #40
    d'2 d'4 | % 41
    c'2. (
  }
  \alternative {
    {
      | % 42
      c'2 ) c''4 | % 43
      c'2. ( | % 44
      c'2. )
    }
  }




}



text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Малкият планински извор / Malkijat planinski izvor" }
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