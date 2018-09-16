  


melody = \absolute  {
  \clef treble
  \key c \minor
  \time 3/4 \tempo "Adagio" 4 = 56
  
  \partial 4
 
 g4 |   c'2 d'4 | es'2 c'4 |  g2 g'4 |  g'2 c''8 c'' |   c''2 bes'4 | c''2 as'4 \break |

g'2 fis'4 | g'2 f'4 | es'2 d'4 | es'2 d'4 |  c'2 b4 |  c'2 es'4 | \break

   es'2 d'4 | c'2 d'8 d' |f'2 es'4 | d'2  c'4 | es'2 d'4 | c'2. | \break


}

text = \lyricmode { Ма -- хар Бе
  -- ну А -- ба, Ве -- ют Би -- ла -- дер А -- дер
  Бе -- ну ше -- ла, Бе -- ну ше -- ла, Бе -- ну
  ше -- ла, ше -- ла, ше -- ла, ше -- ла, Би -- ла
  -- дер А -- дер Бе -- ну ше -- ла.

 
 
}

textL = \lyricmode {Ma -- har Be -- nu
  A -- ba, Ve -- yut Bi -- la -- der A -- der Be -- nu she -- la,
  Be -- nu she -- la, Be -- nu she -- la, she -- la, she --
  la, she -- la, Bi -- la -- der A -- der Be -- nu she -- la.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / Nebeto se otvaria" }
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