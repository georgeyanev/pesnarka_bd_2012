


melody = \absolute  {
  \clef treble
  \key des \major 
  \time 2/4 \tempo "Larghetto" 4 = 56
  
  \autoBeamOff
 
bes'4. des''8 | % 2
  c''8 bes'8 a'8 c''8 | % 3
  bes'4. f'8 | % 4
  bes'2 \break | % 5
  \time 3/4  as'8. as'16 as'2 | % 6
  as'16 bes'16 as'16 ges'16 f'8. es'16 des'8 es'8 | % 7
  \time 2/4  f'2 \break | % 8
  es'4. f'8 | % 9
  ges'8 ges'8 as'8 bes'8 | \barNumberCheck #10
  f'2 | % 11
  \time 3/4  des''8. des''16 des''2 \break | % 12
  c''16 des''16 es''16 des''16 c''16 bes'16 a'16 ges'16 f'16 es'16
  des'16 c'16 | % 13
  bes8 a8 ges'4. f'8 \break | % 14
  f'2 \fermata \times 2/3 {
    a8*255/256 ( bes8*255/256 ) c'8*129/128
  }
  | % 15
  des'4 \fermata c'4. \fermata f'8 | % 16
  \time 4/4  bes'4. as'8 bes'8 as'8 ges'8 f'8 \break | % 17
  es'4. f'8 ges'4 as'8 bes'8 | % 18
  \time 2/4  f'2 | % 19
  \time 3/4  f'4. es'8 f'8 es'8 | \barNumberCheck #20
  \time 2/4  des'4 c'4 \break | % 21
  ges'2 | % 22
  f'4 des'4 | % 23
  c'16 -\markup{ \bold {rall.} } des'16 es'16 des'16 c'8. des'16 | % 24
  bes2 | % 25
  \time 3/4  | % 25
  bes'8. -\markup{ \bold {a tempo} } bes'16 bes'2 \break | % 26
  c''16 des''16 c''16 bes'16 \times 2/3 {
    as'8*255/256 bes'8*255/256 c''8*129/128
  }
  bes'8 ( ges'8 ) | % 27
  f'2 as'8. as'16 | % 28
  as'2 as'16 bes'16 as'16 ges'16 \break | % 29
  \time 2/4  f'8. es'16 des'8 es'8 | 
  \time 3/4  f'2 \times 2/3 {
    a8*255/256 ( bes8*255/256 ) c'8*129/128
  }
  | % 31
  des'4 \fermata c'2 | % 32
  f'4. es'8 f'8 es'8 \break | % 33
  \time 2/4  des'4 c'4 | % 34
  ges'2 | % 35
  \time 3/4  | % 35
  \times 2/3  {
    f'8*255/256 -\markup{ \bold {rit.} } es'8*255/256 des'8*129/128
  }
  des'4 \fermata c'8. bes16 | % 36
  \time 2/4  bes2 \bar "|."



}

text = \lyricmode { Ра  --  нен 
   час   е,   всич  --  ко   пей,   треп  --  ти.   Слън  --  це 
   грей,   рад  --  ва   се   ду  --  ша  --  та   на   све  --  та 
   за   ве  --  ли  --  ка  --  та   Лю  --  бов.   Пей,   сър  --
   це,   за  --  бра  --  ви   скръб  --  та   и   бу  --  ри  --  те 
   чо  --  веш  --  ки   в_то  --  я   ди  --  вен   час.   Чуй   гла 
  --  са   ми!   Ве  --  ли  --  ки  --  ят   Жи  --  вот   се   раж 
  --  да   в_теж  --  ка  --  та   скръб.   Ти  --  ха   Ра  --
   дост,   нов   Жи  --  вот   но  --  си   та  --  зи   бу  --  ря 
   на   све  --  та.   Нов   жи  --  вот   на   Лю  --  бов   ду  --
   ша   ми   да   стоп  --  ли.   Сво  --  бо  --  да,   си  --  лен 
   Дух   и   Мир   ще   и  --  маш   ти.   Чуй   гла  --  са   ми! 
   Ти  --  хи   зву  --  ци   теб   зо  --  ват,   веч  --  на   Лю 
  --  бов   там   ца  --  ри! 

 
 
}

textL = \lyricmode {Ra -- nen chas
   e,  vsich -- ko  pey,  trep --  ti.  Slan -- tse  grey,  rad -- va
  se du -- sha -- ta na sve -- ta za ve -- li -- ka -- ta Lyu --
   bov.   Pey,  sar --  tse,  za -- bra -- vi skrab -- ta i bu -- ri
  -- te cho -- vesh -- ki  v_to  -- ya di -- ven  chas.   Chuy   __
  gla -- sa  mi!  Ve -- li -- ki -- yat Zhi -- vot se razh -- da
   v_tezh  -- ka -- ta  skrab.  Ti -- ha Ra --  dost,  nov Zhi -- vot
  no -- si ta -- zi bu -- rya na sve --  ta.  Nov zhi -- vot na Lyu --
  bov du -- sha mi da stop --  li.  Svo -- bo --  da,  si -- len Duh i
  Mir shte i -- mash  ti.   Chuy   __ gla -- sa  mi!  Ti -- hi zvu --
  tsi teb zo --  vat,  vech -- na Lyu -- bov tam tsa --  ri! 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Ранен час / Ranen chas" }
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