


melody = \absolute  {
  \clef treble
  \key   bes \major
  \time 3/8 \tempo "Allegretto" 4 = 54
 
 bes'4 bes'8 | bes'4 bes'8 |  bes'4 bes'8 |  a'8 ( bes'8 )  c''8 \noBeam | \acciaccatura { c''8 ( } a'4 ) g'8 | \break
 
  g'4 g'8 | g'4 g'8 | g'8 ( a'8 ) bes'8 \noBeam|  \acciaccatura { bes'8 ( } g'4 ) f'8 | f'4 f'8 | \break


f'4 f'8 | es'8 ( f'8 ) g'8 \noBeam | \acciaccatura { g'8 ( } es'4 ) d'8 |  d'4 d'8 | c'8 ( d'8 ) c'8 \noBeam | bes4. ~ | bes4. \break


 | d'4 d'8 | c'8 ( d'8 ) c'8 \noBeam | bes4. ~ | bes4. |  d'4 d'8 | c'8 \noBeam  ( d'8 ) \noBeam c'8 | bes4. ~ | 
  bes4. \break
  
  
   d'8. \noBeam d'16 \noBeam d'8 |  f'8.\noBeam f'16 \noBeam f'8 | g'4 d'8 | f'4 es'8 |  es'4. ~ | \break
   
   

 es'4. | g'8.\noBeam g'16 \noBeam g'8 | c'8. \noBeam bes'16 \noBeam  bes'8 | a'4 g'8 | g'4 f'8 | \break
 
 
  bes'4. ~ | bes'4. | f'4 d'8 | f'4 f'8 | f'4. ~ | f'4. |  \break
  
  
  
   f'4 f'8 |f'4  f'8 | f'4. ~ |  f'4. \key des \major \time 2/4 | \tempo "Andante" 4=80 bes'4. a'8 | \break
   
   
   
   \time 6/4 \autoBeamOff bes'8. ges'16 f'2 des'8. es'16 f'4. f'8 |  ges'4. f'8 ges'4 as'8. as'16 f'2 |  \break
   
   
   
   \time 4/4  c'8 des'8 es'8 f'8 ges'2 | f'8 es'8 des'8 c'8 bes2 | \time 3/4  \repeat volta 2 {  bes'8. c''16 des''2 | \break
    
    
    c''8. bes'16 a'2 | \time 4/4  bes'8 bes'8 ges'8 ges'8 f'2 | \time 4/4 c'8 des'8 es'8 f'8 ges'2 | \break
    
      f'8 es'8 des'8 c'8 bes2 } bes4   c'4 \mark \markup{ \bold "rit"} des'4 c'4 | bes2. \mark \markup{ \bold  "D.C. al Fine" } r4 

 
 
}

text = \lyricmode { И  --  де,   и 
  --  де,   и  --  де,   сам   Той   и -- де,   и  --  де,   и  --  де, 
   сам   Той   и -- де,   и  --  де,   и  --  де,   сам   Той  и -- де   да 
   по  --  ма  --  га   Той,   да   по  --  ма  --  га   Той,   да 
   по  --  ма  --  га   Той.   Мощ  --  ни  --  ят,   сил  --  ни  --
   ят,   да   по  --  ма  --  га   Той,   __  мощ  --  ни  --  ят, 
   сил  --  ни  --  ят,   да   по  --  ма  --  га   Той,   да   по  --
   ма  --  га   Той,   да   по  --  ма  --  га   Той.   Ний   ще   ра 
  --  бо  --  тим   със   лю  --  бов,   ще   ра  --  бо  --  тим 
   със   Лю  --  бов,   да   по  --  ма  --  га   Той,   да   по  --
   ма  --  га    Той,   Мощ  --  ни  --  ят,   сил  --  ни  --
   ят,   да   по  --  ма  --  га   Той,   да   по  --  ма  --  га 
   Той,   да   по  --  ма  --  га   Той,   да   по  --  ма  --  га 
   Той. 

 
 
}

textL = \lyricmode {I --  de,  i --
   de,  i --  de,  sam Toy i -- de,  i --  de,  i --  de,  sam Toy i -- de,  i
  --  de,  i --  de,  sam Toy i -- de da po -- ma -- ga  Toy,  da po -- ma
  -- ga  Toy,  da po -- ma -- ga  Toy.  Most -- ni --  yat,  sil -- ni
  --  yat,  da po -- ma -- ga  Toy,  mosht -- ni --  yat,  sil -- ni
  --  yat,  da po -- ma -- ga  Toy,  da po -- ma -- ga  Toy,  da po --
  ma -- ga  Toy.  Niy shte ra -- bo -- tim sas lyu --  bov,  shte ra
  -- bo -- tim sas Lyu --  bov,  da po -- ma -- ga  Toy,  da po -- ma
  -- ga  Toy,  Mosht -- ni --  yat,  sil -- ni --  yat,  da po -- ma
  -- ga  Toy,  da po -- ma -- ga  Toy,  da po -- ma -- ga  Toy,  da po
  -- ma -- ga  Toy. 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Той иде / Toi ide" }
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