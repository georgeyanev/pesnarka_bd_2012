


melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Moderato" 4 = 84
 
 \relative c' {
   
   \autoBeamOff
   
  c8. g16 c8 d8 |  e4 c4 |  a4. b8 |   c4 c4 | \break
  
  
  e8. c16 e8 f8 |  g4 e4 |  a4. b8 | c4 c4 \fermata \bar "||" \key f \major c,4 f8. g16 | \break
   
   
 a4 c,4 | g'4 bes,8. c16 | a4 ( c4 ) | c4 \autoBeamOn f8. ( g16 ) |  a4 f4 |  \break
 
 
 \autoBeamOff g4 e8. e16 | f2 \repeat volta 2  {f4 \times 2/3 { e8 f8 g8 } | e4 d4 | d4 \autoBeamOn d8. ( e16 ) | \break
    
    
    c2 | g'4 \times 2/4 \autoBeamOff { g8 g8 g8 } | c4 bes4 | a4 g8. ( a16 ) | f2  -\markup{ \bold {D. C.} } -\markup{ \bold {con ripetizione} } \break 
}
   
 }
   
   
 }



}

text = \lyricmode {   Мо  --  га   да 
   по  --  стиг  --  на   що   же  --  ла  --  я.   Във   Жи  --  во 
  --  та   всич  --  ко   се   по  --  сти  --  га.   Ще   но  --  ся 
   Бо  --  жи  --  и  --  те   бла  --  га   във   всич  --  ки   чо 
  --  веш  --  ки   сър  --  ца.   Там,   де  --  то   се   раж  --
   да   Ра  --  дост  --  та,   там,   де  --  то   ца  --  ру  --
   ва   Лю  --  бов  --  та. 

 
 
}

textL = \lyricmode { Mo -- ga da po --
  stig -- na shto zhe -- la --  ya.  Vav Zhi -- vo -- ta vsich -- ko
  se po -- sti --  ga.  Shte no -- sya Bo -- zhi -- i -- te bla -- ga
  vav vsich -- ki cho -- vesh -- ki sar --  tsa.   Tam,  de -- to se
  razh -- da Ra -- dost --  ta,   tam,  de -- to tsa -- ru -- va Lyu
  -- bov --  ta. 
 
 
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