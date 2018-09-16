


melody = \absolute  {
  \clef treble
  \key c \major
  \time 4/4 \tempo "Andante" 4 = 60
  
  \autoBeamOff


 (r8 c'' c''8 )  c''4 ( \acciaccatura { d''16 c''16 }  b'8 ) c'' d''4 | \time 5/4  c''4 ( b'8 c'' a'4 ) g'2 \break | 
 
  \time 6/4  g'4 -- a' -- g' ( f' ) e'2 | \time 5/4  g'8 g' f' e' f'2 g'4 \break |

\time 6/4  a'4 b'8 b' c''4 a' g'2 |\time 5/4  c''8 e' g'4 f' f'2 |  a'8 a' a'4 g' g'2 \break |

 b'8 b' b'4 a'8 ( b' ) c''2 |e'4 g' g' g'2 |  e'4 g' g' g'2 |

}

text = \lyricmode {Ки -- а мет Зе --  -- ну. Ма -- хар Бе  --  ну. Хай  --  ме  -- ши  --  на се  -- 
                   
                   ват се  -- му  -- си бе  -- ни. Ха  -- бе  -- рим я -- ве су  -- бе  -- рим са  -- ве,
                   
                   Ки -- а мет Зе --  -- ну. Ма -- хар Бе  --  ну, Ма -- хар Бе  --  ну.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Киамет Зену / Kiamet zenu" }
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