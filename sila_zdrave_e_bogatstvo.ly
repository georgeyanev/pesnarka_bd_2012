


melody = \absolute  {
  \clef treble
  \key g \major
  \time 3/4 \tempo "Moderato" 4 = 92
  
   \autoBeamOff
 
 \relative d' {
  \repeat volta 2 {
    
  d8. d16 e8 fis8 g8 a8 | b4 g2 | e8. e16 e8 e8 a8 g8 | \break
    
    
    
    fis4 d2 |  c'8. c16 c8 b8 d8 c8 | b4 g2 | b8. c16 d4 d4 | \break
    
    c8. b16 c4 a4 |    d,8. d16 e8 e8 fis8 d8 | g4 g2 -\markup{ \bold {Fine} }} |\break
  
  \time 4/4  g4 g2 \tempo "Andante" 4=60 e8. e16 \time 3/4  a4 g4 fis8. e16 | 
  
  
  \time 2/4  e4. ( fis8 ) \break
  
  | \time 3/4  d2 b'8. b16 | c4 e,4 fis8. d16 | \time 4/4  b'2 ( a2 ) | 
  \time 3/4  | 
  \grace { b16 ( a16 } g2. -\markup{ \bold {D.C. al Fine} } -\markup{
    \bold {senza ripetizione}
  } ) \bar "|."
}



}

text = \lyricmode { Си -- ла,
  здра -- ве е бо -- гат -- ство, Си -- ла, здра --
  ве е бо -- гат -- ство, Си -- ла, здра -- ве е
  бо -- гат -- ство, е бо -- гат -- ство, е бо --
  гат -- ство, Си -- ла, здра -- ве е бо -- гат --
  ство. гат -- ство за жи -- во -- та на ду -- ша
  -- та, за жи -- во -- та на ду -- ша -- та.

 
 
}

textL = \lyricmode {  
  Si -- la, zdra
  -- ve e bo -- gat -- stvo, Si -- la, zdra -- ve e bo -- gat --
  stvo, Si -- la, zdra -- ve e bo -- gat -- stvo, e bo -- gat --
  stvo, e bo -- gat -- stvo, Si -- la, zdra -- ve e bo -- gat --
  stvo. gat -- stvo za zhi -- vo -- ta na du -- sha -- ta, za zhi
  -- vo -- ta na du -- sha -- ta.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Сила здраве е богатство / Sila zdrave e bogatstvo" }
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