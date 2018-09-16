


melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Moderato" 4 = 72
 
a8 ( d'8 ) e'8 ( f'8 ) | % 2
  g'2 | % 3
  a'8 ( e'8 ) c'8 ( b8 ) | % 4
  a2 | % 5
  g'16 -\markup{ \bold {Poco più mosso} } ( a'16- ) f'8 f'16 ( g'16 )
  e'8 | % 6
  e'16 ( f'16 ) d'8 d'16 ( e'16 ) c'8 \break | % 7
  b8. ( c'16 ) d'8 e'8 | % 8
  f'4 e'8. ( dis'16 ) | % 9
  e'2 \bar "||"
  a'8. -\markup{ \bold {Largamente} } ( b'16 ) c''8 a'8 | % 11
  e''2 | % 12
  e'8 a'4 ( g'8 ) | % 13
  a'16 ( g'16 f'16 e'16 ) e'4 \break | % 14
  \time 3/4  \repeat volta 2 {
    a8 b8 c'4. ( b8 ) | % 15
    d'8 ( c'8 ) b8 a8 a4 \fermata
  }
  | % 16
  \time 2/4  e'4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e'8*255/256 ( f'8*255/256 e'8*129/128 )
  }
  | % 17
  a'4. ( g'8 ) | % 18
  a'16 g'16 f'16 e'16 g'16 f'16 e'16 d'16 \break | % 19
  e'2 | \barNumberCheck #20
  d'8 ( e'8 ) f'8 e'8 | % 21
  g'4. f'8 | % 22
  e'8 dis'8 e'4 \fermata | % 23
  a8 b8 c'4 | % 24
  \time 3/4  \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    c'16*255/256 ( d'16*255/256 c'16*255/256 b16*255/256 c'16*65/64
    )
  }
  d'8 e'8 f'8 e'8 | % 25
  e'2 d'8 ( e'16 d'16 ) \break | % 26
  \time 2/4  c'8 b8 a8 -\markup{ \bold {rit.} } gis8 | % 27
  a2 \bar "||"
  \time 5/4  | % 28
  a'16 -\markup{ \bold {Animato} } a'8. e'16 e'8. cis'16 cis'8. a2 | % 29
  a'16 a'8. e'16 e'8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    b8*255/256 ( c'8*255/256 a8*129/128 )
  }
  e'2 \break | \barNumberCheck #30
  a'16 a'8. e'16 e'8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cis'8*255/256 ( d'8*255/256 b8*129/128 )
  }
  cis'4. e'8 | % 31
  a'16 a'8. e'16 e'8. \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c'8*255/256 d'8*255/256 b8*129/128
  }
  a2 ( | % 32
  \time 2/4  a4 ) e'4 \bar "||"
  \break | % 33
  \key a \major \time 9/8 | % 33
  a'8 -\markup{ \bold {Allegretto} } -. e'8 -. a'8 -. e'8 -. a'8 -. e'8
  -. e'8 -. e'8 ( -. e'8 ) -. | % 34
  cis'8 -. e'8 -. cis'8 -. e'8 -. cis'8 -. e'8 -. cis'8 -. cis'8 ( -.
  cis'8 ) -. | % 35
  cis'8 -. b8 -. b8 -. cis'8 -. a4 ( a4. ) \break | % 36
  cis'8 -. b8 -. b8 -. b8 -. a4 ( a4. ) | % 37
  \time 5/8  \repeat volta 2 {
    e''4 -- a''8 -- a''8 -- a''8 -- | % 38
    \time 9/8  a''8 gis''8 a''8 b''8 gis''4 gis''8 gis''8 gis''8 | % 39
    gis''8 fis''8 gis''8 a''8 fis''4 fis''8 fis''8 fis''8 \break |
    \barNumberCheck #40
    fis''8 e''8 fis''8 gis''8 e''4 ( e''4. ) | % 41
    \time 5/8  cis''4 e''8 e''8 e''8 | % 42
    \time 9/8  e''8 d''8 e''8 fis''8 d''4 d''8 d''8 d''8 | % 43
    d''8 cis''8 d''8 e''8 cis''4 cis''8 cis''8 cis''8 \break | % 44
    cis''8 b'8 cis''8 d''8 a'4 ( a'4. )
  }
  | % 45
  \key c \major \time 2/4 | % 45
  e'4 -\markup{ \bold {Adagio} } a'8. ( a'16 ) -- | % 46
  a'2 | % 47
  b'4 e''8. ( e''16 ) -- | % 48
  e''2 | % 49
  f''4 e''8 dis''8 \break | \barNumberCheck #50
  e''2 | % 51
  e''4 f''8 e''8 | % 52
  \time 3/4  d''2 c''16 ( b'16 ) c''16 d''16 | % 53
  \time 2/4  e''16 d''16 c''4. | % 54
  d''16 c''16 b'4. | % 55
  c''16 b'16 a'4. | % 56
  a'2 \bar "|."
}



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