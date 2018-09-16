


melody = \absolute  {
  \clef treble
  \key g \major
  \time 3/4 \tempo "Moderato" 4 = 88
 

s2 d'4 \p
 
  e'2. \! ) | % 3
  d'2. \> | % 4
  d'2. \! | % 5
  d'4 g'4.. a'16 | % 6
  b'2 a'4 | % 7
  g'4 ( fis'4 ) g'4 | % 8
  r2 d'4 \mf ( \break | % 9
  \time 6/4  | % 9
  d''2 \< ) c''4 d''4 \! b'2 \> \! | \barNumberCheck #10
  \time 4/4  a'4.. ( bes'16 ) g'4 f'4 | % 11
  es'4.. ( f'16 ) d'2 | % 12
  \time 3/4  r2 b4 \p | % 13
  d'2 \< c'4 \! \break | % 14
   b2 r4 | % 15
  a2 \> b4 | % 16
  g2 \! r4 \bar "||"
  \time 3/8  | % 17
  r8 -\markup{ \bold {Allegro} } -"(" -"e" -"= 120)" r8 b16 \mp ( d'16
  ) | % 18
  g'4 \< fis'16 ( g'16 ) | % 19
  b'4 \! a'16 ( g'16 ) | \barNumberCheck #20
  fis'4 e'8 \> \break | % 21
  


}

text = \lyricmode {
  
  

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Господи, колко те обичам / Gospodi, kolko te obicham" }
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