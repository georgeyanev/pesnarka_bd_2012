


melody = \absolute  {
  \clef treble
  \key f \major
  \time 3/4 \tempo "Moderato" 4 = 52
  
\autoBeamOff  

\partial 2
 
 c'4 f'8. g'16 | a'4. g'8 a' bes' | c''4. c''8 e'' d'' | c''4. d''8 c'' b' \break | 
 
 \time 4/4  a'2 c'4 f'8. g'16 | a'4 f''2 g''8. f''16 | \time 3/4  e''4. d''8 e'' d'' | c''4. d''8 c'' bes' \break |

 a'2 c''4 | \time 4/4  bes'8. a'16 g'2 bes'4 | \time 3/4  d''8 d'' c''4. c''8 \break | 

\time 4/4  f''8 f'' e''4. d''8 c'' bes' | \time 3/4  a'2 c''4 | \time 4/4  bes'8. a'16 g'2 bes'4 \break |

\time 3/4  d''8 d'' c''4. c''8 \time 4/4  f''8 f'' e''4. d''8 c'' bes' | \time 2/4  a'2

}

text = \lyricmode { Бла -- го
  -- сло -- вен от Бо -- га ти, У -- чи -- те --
  лю на Лю -- бов -- та, за -- де -- то тък -- мо
  в_те -- зи дни до -- не -- се Мир и Свет -- ли
  -- на. До -- бре до -- шъл, до -- бре до -- шъл,
  У -- чи -- те -- лю на Лю -- бов -- та; до --
  бре до -- шъл, до -- бре до -- шъл, У -- чи --
  те -- лю на Мъ -- дрост -- та.

 
 
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