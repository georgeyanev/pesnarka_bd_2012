


melody = \absolute  {
  \clef treble
  \key es \major
  \time 4/2 \tempo "Andante cantabile" 2 = 50
 
 
 s2 r4 c'4 f'2 g'2 | % 2
  as'4 as'4 g'4 ( f'4 ) g'2 r4 g'4 | % 3
  c''2 bes'2 as'2 f'2 \break | % 4
  g'4 ( as'4 ) g'1 \fermata g'4. a'8 | % 5
  \time 3/2  bes'2 g'2 c''2 | % 6
  bes'2 as'4 as'4 g'4 f'4 \break | % 7
  \numericTimeSignature\time 4/2  g'4 as'4 g'1 d'4. es'8 | % 8
  \numericTimeSignature\time 4/2  f'2 g'2 es'2 d'2 | % 9
  c'1. r2 \break | \barNumberCheck #10
  c'2 g'4 f'4 e'2 f'2 | % 11
  g'4 e'4 f'4 d'4 c'1 | % 12
  c''2 f''2 e''2 d''2 \break | % 13
  c''2 d''4 bes'4 a'2 a'4 a'4 | % 14
  c''2 bes'2 a'2 g'2 \break | % 15
  f'4 ( e'4 f'4 g'4 ) f'2 r4 c'4 | % 16
  f'2 g'2 bes'2. as'4 | % 17
  g'4 ( f'4 ) g'1 r4 g'4 \break | % 18
  c''2 bes'2 as'2 f'2 | % 19
  g'2 as'2 g'2. g'4 | \barNumberCheck #20
  c''2 d''4 d''4 es''2 c''2 \break | % 21
  bes'2 as'4 as'4 g'4 ( f'4 ) bes'4 -\markup{ \bold {rall.} } ( as'4 )
  | % 22
  g'1 g'2. g'4 | % 23
  g'2 c''1. \pageBreak | % 24
  d''4 ( es''4 ) f''2 ( g''2 ) as''2 ~ | % 25
  as''4 g''4 c''1 g'2 | % 26
  \time 2/2  g'2 g'4 g'4 \break | % 27
  \time 3/2  as'2 ( g'2 ) g'4 g'4 | % 28
  bes'2 ( as'2 ) g'4 r4 | % 29
  \numericTimeSignature\time 4/2  c'2 f'4 es'4 d'2 c'2 \break |
  \barNumberCheck #30
  r1 g'4 g'4 c''4 g'4 | % 31
  as'1 g'4 es''4 es''4 d''4 | % 32
  c''1 g'2 d'4 es'4 \break | % 33
  \time 3/2  g'2 f'2 c'2 ~ | % 34
  c'2 r2 r4 c''4 | % 35
  \numericTimeSignature\time 4/2  c''2. c''4 c''2 g'2 \break | % 36
  \time 2/2  r4 c''4 c''4 -\markup{ \bold {rall.} } c''4 | % 37
  d''2. c''4 | % 38
  c''4 c''4 c''2 -\markup{ \italic {attacca} } \fermata \bar "|."



}

text = \lyricmode {В_на -- ча --
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

textL = \lyricmode { Am An -- fang schu -- u -- f Gott den Him -- mel und die Er -- de.
                     
                     Und die Er -- de war wüst un -- d le -- er wüst und leer. na na na na na na na. Und Fin -- ster -- nis lag auf der Tie -- fe.
 
  Und Gott sprach: Es werde Licht! Und es ward Licht. 
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