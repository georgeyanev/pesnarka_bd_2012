


melody = \absolute  {
  \clef treble
  \key bes \major
  \time 2/4 \tempo "Andante" 4 = 60
  
  \autoBeamOff
 
 g'8. a'16 s2. | bes'4. a'8 g'8. fis'16 g'8 a'8 | d'2. es'8. d'16 | \break
 
 c'4. d'8 bes8. a16 bes8 c'8  d'2. g'8. a'16 | bes'4. c''8 d''8 c''8 bes'8 a'8 |\break |
 
  
  g'2. g'8. a'16 | bes'4. a'8 g'8 fis'8 g'8 a'8 | g'2. s4 -\markup{ \bold {D. C.} } \bar "|."



}

text = \lyricmode { Слу  --  шай  --
   те   гла  --  са   на   пе  --  сен  --  та,   що   раз  --  на  --
   ся   ве  --  че   про  --  лет  --  та.   Дар   ве  --  лик   е 
   за   Жи  --  во  --  та   тя,   дар   ве  --  лик   е   за   Жи  --
   во  -- \skip4  тя. 

 
 
}

textL = \lyricmode {Slu -- shay -- te
  gla -- sa na pe -- sen --  ta,  shto raz -- na -- sya ve -- che pro
  -- let --  ta.  Dar ve -- lik e za Zhi -- vo -- ta  tya,  dar ve --
  lik e za Zhi -- vo -- ta  tya. 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Пролет / Prolet" }
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