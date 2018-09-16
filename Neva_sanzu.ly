


melody = \absolute  {
  \clef treble
  \key d \minor
  \time 9/4  \tempo "Rubato" 4 = 56
  
  \omit Staff.TimeSignature
 
 a''2 ( bes''8 a'' gis''8 a''8 f'' e''8  g''16 f'' e'' d'' ) \nobeam f''8 \nobeam  f'' f''2 | \time 5/4 e''16 ( f'' g'' a'' g'' f'' e'' d'' ) \nobeam e''8 e'' e''2 \break | 

}\time 7/4 g''4 g'' (  f''8 e'' d''8  cis''8 d'' e''8  )  d''2 | f''8. f''16 f''4 e''8 d'' \times 2/3  { cis''8 ( d'' e''8 ) } d''2 \break |

text = \lyricmode {

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Нева санзу / Neva sanzu" }
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