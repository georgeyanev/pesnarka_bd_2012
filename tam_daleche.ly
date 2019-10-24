


melody = \absolute  {
  \clef treble
  \key c \major
  \time 2/4 \tempo "Lento" 4 = 56
  
  \autoBeamOff
 
 a'4. b'8 |  c''8 b'8 a'8 gis'8 | a'4 b'4 | e'2 |  f'4 e'8 d'8 \break |
 
 
  c'8. b16 c'8 d'8 | e'2 | b4. d'8 | c'4 b4 | e'8 ( d'8 ) c'8 b8 \break |
  
  
  a4 gis4 | a2 \repeat volta 2 { | \tempo "Allegretto" 4=92 | e'4 d'8. f'16 | e'4. d'8 |c'8. b16 c'8. d'16 \break | 
                                                            
    e'2 | e'4 b8. d'16 | c'2 | e'4 d'8. f'16 | e'4. a'8 | d'4. g'8 \break | 
    
   f'4 e'8 d'8 | c'4. b8 | a4. e'8 | a4. d'8 | c'4. b8 \break | 
   
    a4 a8. a16 | a2 } | \time 5/4  \repeat volta 2 { e'8 e'8 a'8 a'8 a'8. g'16 f'4. e'8 \break | 
                                                                                              
    d'8 d'8 g'8 g'8 g'8. f'16 e'2 | \time 2/4  b8 c'8 e'8 d'8 | c'4. b8 \break |
   
   a4 a8. a16 | a2 | b8 c'8 e'8 d'8 | c'4. b8 | a4 a8. a16 | a2 
   
  
  }



}

text = \lyricmode {   Там   да  --  ле 
  --  че   зна  --  я   чу  --  ден   край   Слън  --  це, 
   цве  --  тя   и   пло  --  до  --  ве,   бли  --  ка   из  --
   вор,   рай  --  ска   гра  --  ди  --  на   е.   Ти   да   ми   ка 
  --  жеш   туй,   ко  --  е  --  то   знайш  --  за   ро  --  ден 
   край,   рай  --  ска   зе  --  мя,   где   рос  --  на   виш  --
   на   цъф  --  ти   и   зрей.   За   тоз   кра  --  сив   край 
   път   по  --  ка  --  жи.   Къ  --  сай   са  --  мо   плод   у  --
   зрял,   но   без   да   чу  --  пиш   све  --  жи   клон.   И  --
   зо  --  бил  --  но   плод   си   ти   на  --  бе  --  ри   и   на 
   всич  --  ки   с_Ра  --  дост   го   за  --  не  --  си. 

 
 
}

textL = \lyricmode {  Tam da -- le --
  che zna -- ya chu -- den kray Slan --  tse,  tsve -- tya i plo -- do
  --  ve,  bli -- ka iz --  vor,  ray -- ska gra -- di -- na  e.  Ti
  da mi ka -- zhesh  tuy,  ko -- e -- to znaysh -- za ro -- den
   kray,  ray -- ska ze --  mya,  gde ros -- na vish -- na tsaf -- ti
  i  zrey.  Za toz kra -- siv kray pat po -- ka --  zhi.  Ka -- say sa
  -- mo plod u --  zryal,  no bez da chu -- pish sve -- zhi  klon.  I
  -- zo -- bil -- no plod si ti na -- be -- ri i na vsich -- ki  s_Ra 
  -- dost go za -- ne --  si.
 
 
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