


melody = \absolute  {
  \clef treble
  \key bes \minor
  \time 4/4 \tempo "Andante" 4 = 60
  
  \autoBeamOff
  
  bes4 f'8. f'16 f'2 | \time 5/4  ges'4 f'8. e'16 f'2 des''4 \break |
 
 c''4 bes'8. a'16 bes'4 ges' f'8. e'16 | \time 3/4  f'2 es'4 \break |
 
  des'8 des' c'4 bes8 a | \time 4/4  c'4 bes8. a16 b2 \break |
  
   \repeat volta 2 { f'4 bes'8. bes'16 bes'4. bes'8 | \autoBeamOn c''8  ( bes')  a' ( bes' ) c''4 \autoBeamOff bes'8. a'16 \break | 

 \time 5/4  | bes'2 ( as'4 )  ges' f'8. e'16 | \time 3/4  f'2 \times 2/3  {  f'8 [ ( ges' as'8 ) ] } \break |  
   
  \time 4/4  as'4 bes'2  \times 2/3  {  ges'8 ( [ f' es'8 ] ) } | \time 3/4  bes'4 ges'8 ges' f'8. e'16 
   
 f'2 \times 2/3 { c'8 [ ( des' ) ] es'8  } | \break
 
 f'4 ( es' ) des' | \times 2/3  { c'8 [ ( es' des'8 ) ] } c'4 bes8. a16  | \time 2/4  bes2  \break |
 

   
   }

}

text = \lyricmode {  Бе ня -- ко
  -- га, бе ня -- ко -- га, ко -- га -- то бе всич
  -- ко тъм -- ни -- на и в_не -- я се по -- я --
  ви свет -- ли -- на. И свет -- ли -- на -- та о
  -- чер -- та кра -- со -- та та на Бо -- же -- стве -- ни -- я жи -- вот, кой --
  то се все -- ли и по -- вдиг -- на мо -- я --
  та ду -- ша.

 
 
}

textL = \lyricmode {  Be nja -- ko
  -- ga, be nja -- ko -- ga, ko -- ga -- to be vsich
  -- ko tam -- ni -- na i v_ne -- ja se po -- ja --
  vi svet -- li -- na. I svet -- li -- na -- ta o
  -- cher -- ta kra -- so -- ta ta na Bo -- zhe -- stve -- ni -- ja zhi -- vot, koj --
  to se vse -- li i po -- vdig -- na mo -- ja --
  ta du -- sha.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Бершид Ба / Berschid Ba" }
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
  
   \midi { }
  \layout { }
  

 
}