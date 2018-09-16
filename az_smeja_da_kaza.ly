\version "2.18.2"

melody = \absolute  {
  \clef treble
  \key c \major
  \time 4/4 \tempo "Andante" 4 = 63
  
  \autoBeamOff
 
\relative g {
   {
    a8*255/256 b8*255/256 c8*129/128
  }
  d8 e4 a8 | % 2
  \time 5/4  g8. f16 e8 f8 g8 ( a8 ) g2 | \break % 3
  \time 4/4  c4 \times 2/3 {
    b8*255/256 a8*255/256 a8*129/128
  }
  b8 g4 e8 | % 4
  \time 5/4  g8 f8 e8 d8 d8 ( e8 ) c4. c8 | % 5
  \time 4/4  e4. \break c8 d8 c8 b8 a8 | % 6
  \time 4/4  a4 b4 g4. c'8 | % 7
  \time 5/4  \times 4/9 {
    c16*63/64 ( d16*63/64 c16*261/256 b8*765/512 ) b8*387/256
  }
  \times 4/9  {
    c16*63/64 ( d16*63/64 c16*261/256
  }
  b8*85/128 ) b8*43/64 \times 4/9 {
    b16*63/64 ( c16*63/64 b16*261/256 a8*765/512 ) a8*387/256
  }
  \times 4/9  {
    b16*63/64 ( c16*63/64 b16*261/256
  }
  a8*85/128 ) a8*43/64 \times 2/3 {
    g4*255/256 e8*129/128
  }
  g4. f8 | % 8
  f8 f8 a8 g8 g8 e8 g4. g8 | % 9
  \times 2/3  {
    a4*255/256 -\markup{ \bold {(poco rit.)} } a8*129/128
  }
  \times 2/3  {
    b4*255/256 e,8*129/128
  }
  \times 2/3  {
    c'4*255/256 c8*129/128
  }
  c4. e,8 | \barNumberCheck #10
  e8 -\markup{ \bold {(a tempo)} } e8 f8 d8 d4 c4. f8 | % 11
  f8 f8 a8 e8 e4 f4. a8 | % 12
  \time 6/4  g8 d8 e8 f8 e8 ( f8 ) g2 g8 g8 | % 13
  \time 3/4  e'4. d8 c8 b8 | % 14
  \time 4/4  d2 c2 \bar "|."
}



}

text = \lyricmode {Аз сме -- я
  да ка -- жа, че Слън -- це -- то е свет -- ло.
  Аз сме -- я да ка -- жа, че Слън -- це -- то е
  свет -- ло. То -- ва не мо -- же да се от --
  ка -- же. При не -- го всич -- ко се то -- пи,
  при не -- го всич -- ко тъй ра -- сте, при не --
  го всич -- ко все цъф -- ти, при не -- го всич
  -- ко зре -- е. При не -- го всич -- ко ста --
  ва, за -- вив -- ки -- те си сви -- ва и на ра
  -- бо -- та о -- ти -- ва.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Аз смея да кажа / Az smeja da kazha" }
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