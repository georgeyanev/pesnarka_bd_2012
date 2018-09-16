


melody = \absolute  {
  \clef treble
  \key f \major
  \time 2/4 \tempo "Moderato" 4 = 88
  
  \autoBeamOff
 
 a'4 f'8 a' | g'4 e'8 g' | f'2 | bes'4 g'8 bes' | a'4 f'8 a' | g'2 \break | 

c''4 c'' | d''4. c''8 | bes'8 a' g'4 | bes'4 bes' | c''4. bes'8 | a'8 g' f'4 \break | 

c'4 c' | a'4. g'8 | a'8 g' f'4 | d'4 d' | bes'4. a'8 | bes'8 a' g'4 \break |

c''4 c'' | d''4. c''8 | bes'8 a' g'4 | c'4 c' | a'4. g'8 | a'4 g' | f'2 |\break



}

text = \lyricmode { Слън -- це --
  то на Лю -- бов -- та из -- гря -- ва веч във
  све -- та. Вре -- дом пра -- ща Свет -- ли -- на
  и раз -- на -- ся Топ -- ли -- на. Ний сме слън
  -- че -- ви лъ -- чи, но -- сим Но -- ви -- я жи
  -- вот. Ний сме слън -- че -- ви лъ -- чи, но --
  сим Но -- ви -- я жи -- вот.

 
 
}

textL = \lyricmode {
 
 
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