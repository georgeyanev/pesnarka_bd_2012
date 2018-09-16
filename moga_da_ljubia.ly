


melody = \absolute  {
  \clef treble
  \key f \major
  \time 2/4 \tempo "Andante" 4 = 72
  
  \relative c' {
    
    
    \autoBeamOff
    
    
 \partial 4 c4 |   f4 a,8. bes16 |   c4 c8. c16 |  f4 ( g8. ) a16 |  \break
 
  g4 g4 | a4 a16 a16 a16 bes16 | c4 c4 | \break
  
  d4 -> g8. a16 | f4 f4 ( | f4 ) f8 f8 \repeat volta 2 { | f'4. e8 |\break
    
    
 d4 e4 | c2 ( | c4 ) f,8 f8 | f'4. e8 | \break
 
 
    d4 e4 | c2 |a4 a8 a8 | bes2 | \break
    
    
    
    g4. g8 | c4. ( bes8 ) | a4 g4 |  bes4. e,8 | \break 
    
    
    g4 ( a4 ) | f2 (f4) f8 f8 }|  f2  | f4| \break
 
 
 
 
 
  }


}

text = \lyricmode { Аз мо -- га
  да лю -- бя, до -- бър да ста -- на; аз мо --
  га да о -- би -- чам, си -- лен да ста -- на.
  Лю -- бов -- та и О -- бич -- та, Лю -- бов --
  та и О -- бич -- та ще ме на -- у -- чат на
  Бо -- га слу -- га да ста -- на. Лю -- бов -- на.
 
 
}

textL = \lyricmode {  Az mo -- ga da lyu
  -- bya, do -- bar da sta -- na; az mo -- ga da o -- bi --
  cham, si -- len da sta -- na. Lyu -- bov -- ta i O -- bich --
  ta, Lyu -- bov -- ta i O -- bich -- ta shte me na -- u -- chat na
  Bo -- ga slu -- ga da sta -- na. Lyu -- bov -- na.
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Мога да любя / Moga da ljubia" }
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