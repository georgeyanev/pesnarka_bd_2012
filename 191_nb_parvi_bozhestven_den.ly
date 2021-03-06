\version "2.18.2"

\paper {
  print-all-headers = ##t
  print-page-number = ##f 
  left-margin = 2\cm
  right-margin = 2\cm
  ragged-bottom = ##t % do not spread the staves to fill the whole vertical space
}

\header {
  tagline = ##f
}

\bookpart {
\score{
  \layout { 
    indent = 0.0\cm % remove first line indentation
    ragged-last = ##t % do not spread last line to fill the whole space
    \context {
      \Score
      \omit BarNumber %remove bar numbers
    } % context
  } % layout
  
    \new Voice \absolute  {
  \clef treble
  \key es \major
  \time 4/2 \tempo "Andante cantabile" 2 = 50
 
  \autoBeamOff  


  s2 r4 c'4 f'2 g'2 | % 2
  as'4 as'4 g'4 ( f'4 ) g'2 r4 g'4 | % 3
  c''2 bes'2 as'2 f'2 \break | % 4
  g'4 ( as'4 ) g'1 \fermata g'4. a'8 | % 5
  \time 3/2  bes'2 g'2 c''2 | % 6
  bes'2 as'4 as'4 g'4 f'4 \break | % 7
  \time 4/2  g'4 as'4 g'1 d'4. es'8 | % 8
  \time 4/2  f'2 g'2 es'2 d'2 | % 9
  c'1. r2 \break |
  c'2 g'4 f'4 e'2 f'2 | % 11
  g'4 e'4 f'4 d'4 c'1 | % 12
  c''2 f''2 e''2 d''2 \break | % 13
  c''2 d''4 bes'4 a'2 a'4 a'4 | % 14
  c''2 bes'2 a'2 g'2 \break | % 15
  f'4 ( e'4 f'4 g'4 ) f'2 r4 c'4 | % 16
  f'2 g'2 bes'2. as'4 | % 17
  g'4 ( f'4 ) g'1 r4 g'4 \break | % 18
  c''2 bes'2 as'2 f'2 | % 19
  g'2 as'2 g'2. g'4 | 
  c''2 d''4 d''4 es''2 c''2 \break | % 21
  bes'2 as'4 as'4 g'4 ( f'4 ) bes'4 -\markup{ \bold {rall.} } ( as'4 )
  | % 22
  g'1 g'2. g'4 | % 23
  g'2 c''1.  | % 24
  d''4 ( es''4 ) f''2 ( g''2 ) as''2 ~ | % 25
  as''4 g''4 c''1 g'2 | % 26
  \time 2/2  g'2 g'4 g'4 \break | % 27
  \time 3/2  as'2 ( g'2 ) g'4 g'4 | % 28
  bes'2 ( as'2 ) g'4 r4 | % 29
  \time 4/2  c'2 f'4 es'4 d'2 c'2 \break |
  r1 g'4 g'4 c''4 g'4 | % 31
  as'1 g'4 es''4 es''4 d''4 | % 32
  c''1 g'2 d'4 es'4 \break | % 33
  \time 3/2  g'2 f'2 c'2 ~ | % 34
  c'2 r2 r4 c''4 | % 35
 \time 4/2  c''2. c''4 c''2 g'2 \break | % 36
  \time 2/2  r4 c''4 c''4 -\markup{ \bold {rall.} } c''4 | % 37
  d''2. c''4 | % 38
  c''4 c''4 c''2 -\markup{ \italic {attacca} } \fermata \bar "|."
  
  
  }
  
 \addlyrics {
   В_на -- ча --
  ло Бог съз -- да -- де не -- бе -- то и зе --
  мя -- та. А зе -- мя -- та бе пус -- та и не
  -- ус -- тро -- е -- на. Ня -- ма -- ше ред по
  не -- я. И тъм -- ни -- на бе вър -- ху безд --
  на -- та, и Дух Бо -- жий се но -- се -- ше
  над во -- ди -- те на жи -- во -- та. И ре --
  че Бог: „Да дой -- де кра -- си -- ва -- та ви
  -- де -- ли -- на.“ И тя се я -- ви във сво --
  я -- та свет -- ли -- на. И ви -- дя Бог, че
  тя бе до -- бро. И Бог раз -- де -- ли свет --
  ли -- на -- та от тъм -- ни -- на -- та. И на --
  ре -- че Бог свет -- ли -- на -- та ден, а тъм
  -- ни -- на -- та нощ. И ста -- на ве -- чер, и
  ста -- на ут -- ро, пър -- ви ден.
 }
 
 \addlyrics {  V_na -- cha --
  lo Bog saz -- da -- de ne -- be -- to i ze --
  mya -- ta. A ze -- mya -- ta be pus -- ta i ne
  -- us -- tro -- e -- na. Nya -- ma -- she red po
  ne -- ya. I tam -- ni -- na be var -- hu bezd --
  na -- ta, i Duh Bo -- zhiy se no -- se -- she
  nad vo -- di -- te na zhi -- vo -- ta. I re --
  che Bog: „Da doy -- de kra -- si -- va -- ta vi
  -- de -- li -- na.“ I tya se ya -- vi vav svo --
  ya -- ta svet -- li -- na. I vi -- dya Bog, che
  tya be do -- bro. I Bog raz -- de -- li svet --
  li -- na -- ta ot tam -- ni -- na -- ta. I na --
  re -- che Bog svet -- li -- na -- ta den, a tam
  -- ni -- na -- ta nosht. I sta -- na ve -- cher, i
  sta -- na ut -- ro, par -- vi den.}
  
  \header {
    title = "Първи божествен ден / Parvi bozhestven den"
  }
  
  \midi { }

} % score
} % bookpart
