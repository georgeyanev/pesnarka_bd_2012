


melody = \absolute  {
  \clef treble
  \key f \major 
  \time 3/4 \tempo "Andante" 4 = 63
 
 c'4 ( \once \override TupletBracket #'stencil = ##f
  \times 4/5  {
    c'16*255/256 ) ( d'16*255/256 e'16*255/256 f'16*255/256 g'16*65/64
  }
  a'8 ) a'8 | % 2
  \time 2/4  a'8. ( \fermata g'16 a'16 g'16 ) f'16 -\markup{
    \bold
    {Sostenuto}
  } ( e'16 ) | % 3
  \time 3/4  f'16 ( e'16 ) d'16 ( c'16 ) d'2 \break | % 4
  \time 4/4  | % 4
  e'4. -\markup{ \bold {a tempo} } f'8 g'8 ( a'8 ) f'8 -\markup{
    \bold
    {Sostenuto}
  } g'16 g'16 | % 5
  \time 3/4  | % 5
  e'8 -\markup{ \bold {a tempo} } ( f'8 ) e'2 | % 6
  g'4. e'8 f'8 e'8 | % 7
  d'8 ( c'8 ) d'2 \break | % 8
  a'4. g'8 c''8 ( bes'8 ) | % 9
  a'8 g'8 g'4 ( a'16 g'16 f'16 e'16 ) | \barNumberCheck #10
  f'8 ( g'8 ) e'2 | % 11
  g'8 g'4 f'8 e'8 f'8 \break | % 12
  e'8 c'8 d'2 | % 13
  \time 5/4  | % 13
  c'4 -\markup{ \bold {Largamente} } ( f'4 ) e'4 e'2 | % 14
  c'4 ( f'4 ) e'4 e'2 | % 15
  \time 2/4  g'4. f'16 ( e'16 ) \break | % 16
  f'8 ( e'8 ) f'8 ( e'8 ) | % 17
  d'2 \fermata \bar "||"
  \key bes \major g'8 a'4 g'8 | % 19
  fis'4 es'8 ( d'8 ) | \barNumberCheck #20
  es'8 fis'4 es'16 ( d'16 ) | % 21
  es'8 ( d'8 ) c'4 \break | % 22
  c'4. d'16 es'16 | % 23
  \time 4/4  fis'4 g'2 fis'4 | % 24
  \time 3/4  es'8 ( d'8 ) c'2 | % 25
  \time 2/4  a'8 ( bes'16 a'16 ) g'8 fis'8 \break | % 26
  \time 2/4  g'4 c''4 \fermata | % 27
  \time 2/4  bes'8 ( \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a'16*63/64 bes'16*129/128 a'16*129/128 )
  }
  g'8 ( fis'8 ) | % 28
  g'2 | % 29
  \time 4/4  bes'4 d''2 bes'4 | \barNumberCheck #30
  \time 3/4  a'8 ( g'8 ) a'2 \break | % 31
  \time 3/4  cis''4. ( d''16 cis''16 bes'8 a'8 ) | % 32
  g'8 ( a'8 ) a'2 | % 33
  \time 2/4  bes'8 bes'8 cis''4 | % 34
  bes'4 \prall a'4 \break | % 35
  \time 4/4  \times 2/3 {
    bes'8*255/256 a'8*255/256 g'8*129/128
  }
  g'2 d'8 d'8 | % 36
  \time 3/4  g'4 ( a'2 ) | % 37
  \time 2/4  c''8 bes'8 a'8 ( g'8 ) | % 38
  \time 3/4  a'4 a'2 \pageBreak | % 39
  \time 2/4  g'8 g'8 fis'4 | \barNumberCheck #40
  es'2 | % 41
  fis'8 es'8 d'4 | % 42
  d'2 | % 43
  \time 2/4  c'4. d'16 ( es'16 ) | % 44
  fis'2 | % 45
  g'8 es'8 d'4 \break | % 46
  \time 3/4  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es'8*255/256 ( d'8*255/256 c'8*129/128 )
  }
  d'2 | % 47
  \time 2/4  c'8 ( d'8 ) es'8 c'8 | % 48
  \time 3/4  d'4 d'2 | % 49
  \time 2/4  g'8 fis'4 g'8 | \barNumberCheck #50
  \time 3/4  a'4 g'2 \break | % 51
  es'8 fis'8 es'4. c'8 | % 52
  \time 3/4  d'4 es'8 ( fis'8 ) \once \override TupletBracket
  #'stencil = ##f
  \times 2/3  {
    g'8*255/256 ( es'8*255/256 fis'8*129/128 )
  }
  | % 53
  \time 2/4  d'2 \bar "||"
  \key g \major \time 4/4 | % 54
  \tempo 4=100 d'4 ( g'4 ) d'4 b8. c'16 \break | % 55
  \time 3/4  d'4 d'2 | % 56
  e'4 ( a'4. ) g'8 | % 57
  \time 4/4  fis'2 g'2 \bar "||"
  \time 2/4  | % 58
  \tempo 4=120 d'8 -\markup{ \bold {Vivo} } b'4 d''8 | % 59
  \times 2/3  {
    c''8*255/256 c''8*255/256 b'8*129/128
  }
  c''8 ( d''8 ) \break | \barNumberCheck #60
  b'2 | % 61
  b'8 a'4 g'8 | % 62
  g'8 fis'8 fis'8 e'8 | % 63
  e'2 | % 64
  c''8 e'4 e'8 | % 65
  e'8 d'8 d'8 c''8 \break | % 66
  b'2 | % 67
  b'8 a'4 g'8 | % 68
  fis'8 g'8 a'8 b'8 | % 69
  g'2 | \barNumberCheck #70
  c''8 e'4 e'8 | % 71
  e'8 d'8 d'8 c''8 \break | % 72
  b'2 | % 73
  e'8 e'4. | % 74
  e'8 fis'8 g'8 g'8 | % 75
  g'2 | % 76
  e''8 a'4 b'8 | % 77
  c''8 ( b'8 ) c''8 d''8 \break | % 78
  b'8 b'4. | % 79
  b'8 a'4 g'8 | \barNumberCheck #80
  fis'8 g'8 a'8 b'8 | % 81
  g'8 g'4. | % 82
  fis'8 e'4 d'8 | % 83
  d'4 d'8 d'8 \break | % 84
  d'8 ( g'8 ) g'4 | % 85
  \time 3/4  c''4 e'4. e'8 | % 86
  e'8 ( d'8 ) d'2 | % 87
  c''8 ( b'8 ) a'8 g'8 a'8. b'16 | % 88
  a'8 ( g'8 ) g'2 \pageBreak | % 89
  \time 4/4  | % 89
  \tempo 4=70 b'4 -\markup{ \bold {Maestoso} } g'4 e'4 d'4 |
  \barNumberCheck #90
  e'8. fis'16 g'2 b'4 | % 91
  \time 4/4  d''4 b'4 e''4. d''8 \break | % 92
  c''8 ( b'8 ) c''8 ( d''8 ) b'2 | % 93
  b4. c'8 d'2 | % 94
  a4. -\markup{ \bold {rit.} } b8 c'4 e'4 | % 95
  d'4 c'4 b2 \bar "|."



}

text = \lyricmode { Стра  --  шен 
   бе  --  ше   вя  --  тъ  --  рът,   що   раз  --  друс  --  ва  --
   ше   го  --  ра  --  та.   Стра  --  шен   бе   и   си  --  лен. 
   Всич  --  ки  --  те   лис  --  та   шу  --  мя  --  ха,   шу  --
   мя  --  ха   и   се   мо  --  ле  --  ха:   „Спри,   вет  --  ре, 
   спри,   вет  --  ре,   во  --  лен   раз  --  ви  --  гор!   Не 
   ни   ли   жа  --  лиш?   По  --  спри,   не   ду  --  хай!   Е  --
   два   през   та  --  зи   го  --  ди  --  на   ту  --  ка   дой  --
   дох  --  ме   на   __  гос  --  ти.   Не   ду  --  хай,   ве  --
   тре,   ще  \skip4  нем,   ще   ни   се   стро  --  шат   ре  --
   бър  --  ца  --  та.“ –   „Ой   ви   вас,   мал  --  ки   лис  --
   тен  --  ца,   за   вас   аз   чух   от  --  да  --  ле  --  ко 
   и   дой  --  дох   да   ви   на  --  ви  --  дя,   да   по  --  и 
  --  гра  --  я   и   ви   по  --  ду  --  хам,   да  --  ре  --  не 
   да   ви   до  --  не  --  са.   Слу  --  шай  --  те   то  --  га 
  --  ва   мой  --  та   пе  --  сен:   След   ме  --  не   е  --  то 
   прис  --  ти  --  га   дру  --  гар   ми   ве  --  рен,   дре  --
   бен   дъжд.   Той   ще   по  --  ле  --  е   по  --  ле  --  то, 
   ще   го   при  --  гот  --  ви   за   и  --  гри.   Прах   да 
   се,   лис  --  ти,   не   вди  --  га   при   тез   и  --  гри 
   ве  --  се  --  ли.   От  --  го  --  ре   Слън  --  це   ще   пек 
  --  не,   да   ни   о  --  гре  --  е   и   за  --  топ  --  ли; 
   да   си   по  --  троп  --  нем   то  --  га  --  ва,   да   си 
   по  --  хап  --  нем,   чис  --  та   во  --  да   да   пи  --
   ем,   с_ра  --  дост   да   се   раз  --  де  --  лим.   На  --
   но  --  во   да   се   срещ  --  нем   пак   и   до  --  бре   с_о 
  --  бич   да   се   раз  --  бе  --  рем.“ 

 
 
}

textL = \lyricmode {Stra  --  shen 
   be  --  she   vja  --  t  --  rat,   shho   raz  --  drus  --  va  --
   she   go  --  ra  --  ta.   Stra  --  shen   be   i   si  --  len. 
   Vsich  --  ki  --  te   lis  --  ta   shu  --  mja  --  ha,   shu  --
   mja  --  ha   i   se   mo  --  le  --  ha:   „Spri,   vet  --  re, 
   spri,   vet  --  re,   vo  --  len   raz  --  vi  --  gor!   Ne 
   ni   li   zha  --  lish?   Po  --  spri,   ne   du  --  haj!   E  --
   dva   prez   ta  --  zi   go  --  di  --  na   tu  --  ka   doj  --
   doh  --  me   na   __  gos  --  ti.   Ne   du  --  haj,   ve  --
   tre,   shhe  \skip4  nem,   shhe   ni   se   stro  --  shat   re  --
   bar  --  ca  --  ta. –   Oj   vi   vas,   mal  --  ki   lis  --
   ten  --  ca,   za   vas   az   chuh   ot  --  da  --  le  --  ko 
   i   doj  --  doh   da   vi   na  --  vi  --  dja,   da   po  --  i 
  --  gra  --  ja   i   vi   po  --  du  --  ham,   da  --  re  --  ne 
   da   vi   do  --  ne  --  sa.   Slu  --  shaj  --  te   to  --  ga 
  --  va   moj  --  ta   pe  --  sen:   Sled   me  --  ne   e  --  to 
   pris  --  ti  --  ga   dru  --  gar   mi   ve  --  ren,   dre  --
   ben   dazhd.   Toj   shhe   po  --  le  --  e   po  --  le  --  to, 
   shhe   go   pri  --  got  --  vi   za   i  --  gri.   Prah   da 
   se,   lis  --  ti,   ne   vdi  --  ga   pri   tez   i  --  gri 
   ve  --  se  --  li.   Ot  --  go  --  re   Slan  --  ce   shhe   pek 
  --  ne,   da   ni   o  --  gre  --  e   i   za  --  top  --  li; 
   da   si   po  --  trop  --  nem   to  --  ga  --  va,   da   si 
   po  --  hap  --  nem,   chis  --  ta   vo  --  da   da   pi  --
   em,   s_ra  --  dost   da   se   raz  --  de  --  lim.   Na  --
   no  --  vo   da   se   sreshh  --  nem   pak   i   do  --  bre   s_o 
  --  bich   da   se   raz  --  be  --  rem.“ 
 
 
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