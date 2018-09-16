\version "2.18.2"


melody = \absolute  {
  \clef treble
  \key d \minor
  \time 4/4 \tempo "Senza misura" 
 
\acciaccatura { g'8 ( ( } a'2  ) \times 2/3  { g'8 [ f' g'8 ] } s4 | \time 5/4 a'4 ) a'2 g'4 a' | 

\time 7/4  a'8 ( [ bes'8 a'8 g'8 f'8 g'8 ] \acciaccatura {
    a'8 [ b'8
    ]
  } c''4 ) b'8 [ c''8 ] a'2 | % 4
  \time 6/4  g'4 a'4 a'8 ( [ g'8 ] a'8 [ bes'8 ) ] g'2 \break | % 5
  d''2 c''4 ( b'8 [ c''8 ) ] a'8. ( [ bes'16 a'8 g'8 ) ] | % 6
  \time 5/4  f'8 ( [ g'8 ] \grace { a'8 [ b'8 ] } c''4 ) b'8 [ c''8 ]
  a'2 | % 7
  \time 6/4  a'8 ( [ bes'8 ] \grace { c''8 [ d''8 ] } c''4 ) bes'8 ( [
  a'8 g'8 a'8 ) ] g'4. g'8 | % 8
  \time 5/4  c''8. ( [ bes'16 ) a'8. ( g'16 ) ] g'4 f'8 ( [ g'8 \grace
  { bes'8 } a'8 ) g'8 ] \break | % 9
  \time 8/4  f'8 ( [ e'8 a'8 g'8 ] f'4. e'8 d'8 [ e'16 f'16 ) ] d'4 d'2
  | \barNumberCheck #10
  \grace { g'8 ( } a'2 ) \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g'8*255/256 [ f'8*255/256 g'8*129/128 ]
  }
  a'4 a'2 c''4 ( b'4 ) | % 11
  c''4 ( d''4 c''4 b'8 [ c''8 ) ] a'2 g'4 a'4 \break | % 12
  \time 4/4  a'8 ( [ bes'16 c''16 ] a'8 [ g'8 ) ] f'8 ( [ e'8 a'8 g'8
  ) ] | % 13
  \time 7/4  f'4. ( e'8 d'8 [ e'16 f'16 ] d'4 ) d'2 r8 d'8 | % 14
  d''2 c''4 ( b'8 [ c''8 ) ] a'2 a'4 | % 15
  \time 6/4  a'8 ( [ bes'8 ] \grace { c''8 [ d''8 ] } c''4 ) bes'8 ( [
  a'8 ] g'8 [ a'8 ) ] g'2 \break | % 16
  \time 4/4  g'4 ( f'8 [ e'8 ] d'8 [ e'8 ] c'4 ) | % 17
  d'8 ( [ e'8 f'8 g'8 ) ] g'2 | % 18
  c''8 ( [ bes'8 a'8 g'8 ) ] f'8 ( [ e'8 a'8 g'8 ) ] | % 19
  \time 7/4  f'4. ( e'8 ) [ d'8 ( e'16 f'16 ] d'4 ) d'2 r8 d'8 \break
  | \barNumberCheck #20
  \time 6/4  g'4 ( \grace { f'8 [ g'8 ] } f'4 ) g'4 a'4 \grace {
    f'8 (
    [ g'8 ]
  } f'4 ) e'8 [ f'8 ] | % 21
  \time 4/4  d'4. ( e'8 ) c'4 ( d'4 ) | % 22
  \time 6/4  es'4. ( d'8 g'8 [ fis'8 \grace { es'8 [ fis'8 ] } es'8 )
  d'8 ] d'2 \fermata \break | % 23
  \time 9/4  a'4. ( g'8 f'16 [ g'16 ] \grace { a'8 [ b'8 ] } c''4 ) b'8
  ( [ c''8 ] a'2 ) g'4 a'8 s4 | % 24
  \time 10/4  a'8 ( [ bes'16 c''16 ] a'8 [ g'8 ) ] f'8 ( [ e'8 a'8 g'8
  ) ] f'4. ( e'8 d'8 [ e'16 f'16 ) ] d'4 d'2 \break | % 25
  \time 9/4  a'4. ( g'8 [ f'16 g'16 ] \grace { a'8 [ b'8 ] } c''4 ) b'8
  ( [ c''8 ] a'2 ) a'4 b'4 s8 | % 26
  \time 8/4  c''4 ( d''4 \grace { d''8 } c''4 ) b'8 [ c''8 ] a'2 g'4
  a'4 | % 27
  \time 6/4  a'8 ( [ bes'16 c''16 a'8 g'8 ) f'8 ( e'8 ] a'8 [ g'8 ] f'4.
  e'8 ) \break | % 28
  \time 4/4  d'8 ( [ e'16 f'16 ] d'4 ) d'4 r8 d'8 | % 29
  \time 10/4  d''2 ( c''4. d''16 [ es''16 ] d''4 c''4 \grace { c''8 }
  bes'4 ) a'4 c''8 [ bes'16 a'16 ] bes'8 [ c''8 ] | \barNumberCheck
  #30
  \time 7/4  d''4 ( c''4 bes'8 [ c''8 bes'8 a'8 ] g'16 [ a'16 bes'16
  c''16 ] d''4 ) c''8 ( [ bes'16 a'16 ] \break | % 31
  \time 3/4  bes'4. c''8 \grace { bes'8 [ c''8 ] } bes'8 ) [ a'16 g'16
  ] | % 32
  a'4. bes'8 a'8 [ g'16 f'16 ] | % 33
  g'4. a'8 g'8 [ f'16 e'16 ] | % 34
  \time 4/4  f'4 r8 f'8 c''4 d''8 ( [ c''8 ) ] | % 35
  \time 6/4  bes'4 ( a'8 [ bes'8 ) ] g'2 d'4 ( e'4 ) \break | % 36
  \time 12/4  g'8 ( [ f'8 g'8 a'8 ] g'4 f'8 [ g'8 ] f'4. e'8 d'8 [ e'16
  f'16 ] d'4 ) d'2 \fermata d'4 d'4 | % 37
  \time 8/4  \grace { g'8 ( } a'2 ) \grace { bes'8 ( [ c''8 ] } bes'8
  ) [ a'8 g'8 f'8 g'8 a'8 ] a'2 a'4 \break | % 38
  d''4 ( c''4 \grace { d''8 [ es''8 ] } d''4 ) c''4 bes'4 a'4 \grace {
    bes'8 ( [ a'8 ]
  } g'2 ) | % 39
  \time 4/4  c''4 d''4 d''4. ( e''8 | \barNumberCheck #40
  \time 8/4  f''4 e''4 d''4 c''4 bes'4 a'4 ) bes'8 ( [ a'16 g'16 ] a'4
  ) \break | % 41
  \time 5/4  a'8 ( [ g'16 f'16 ] g'4. a'8 \times 2/3 {
    g'4*255/256 f'4*513/512 e'4*513/512
  }
  | % 42
  \time 8/4  d'4. e'16 [ g'16 ] f'8 [ e'8 d'8 e'8 ] d'2 ) d'4 d'4 | % 43
  \time 9/4  \grace { g'8 ( } a'2 ) \grace { bes'8 ( [ c''8 ] } bes'8
  ) [ a'8 ] g'8 [ f'8 g'8 a'8 ] a'2 d'4 e'4 \break | % 44
  \time 8/4  g'8 ( [ f'8 g'8 a'8 ] g'4 f'8 [ g'8 ] f'4. e'8 ) d'8 ( [
  e'16 f'16 ) ] d'4 | % 45
  d'2 ( c'8 [ d'8 es'8 d'8 ] g'8 [ fis'8 es'16 fis'16 es'16 d'16 ] d'2
  ) \fermata \bar "|."

}


text = \lyricmode {Ан -- гел во -- пи -- я -- \skip4 ше: Бла -- го -- дат --
  ней, чис -- та -- я  __ де --  во, ра -- дуй 
  __ ся! И пак  __ ре -- кох.  __ ра -- дуй ся! 
   син вос -- кре -- се три дне -- вен  __ от 
  __ гро -- ба и мер -- тви -- я воз -- двиг -- ну
  -- вий, лю -- ди -- е, ве -- се -- ли -- ся: свя
  -- ти --    ся,  __ свя -- ти -- 
  ся. Но -- вий  __ И -- е ру --  ли -- и --
  ме, Сла -- ва  __ о, Гос -- под --  не на те
  -- бе  __ си -- я. Ли -- куй  __    ни
  -- не --        и ве
  -- се -- ли -- ся Си -- он -- не. Ти -- же -- я
  кра -- суй --    Бо -- го -- ро -- ди
  -- це,  __ о, вос --  ни рож -- дес -- тво  __
  тво  __ е -- го.  __

 
 
}

textL = \lyricmode {
 
 
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