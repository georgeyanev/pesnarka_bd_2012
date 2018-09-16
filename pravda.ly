


melody = \absolute  {
  \clef treble
  \key  c \major 
  \time 3/4 \tempo "Andantino" 4 = 76
 
 c'4 g2 | % 2
  e'4 c'2 | % 3
  a'2. | % 4
  g'2 r8 e'8 | % 5
  e'4. e'8 e'8 e'8 \break | % 6
  f'2 d'4 | % 7
  c'4 ( e'4 g'8 ) --  c''8 -- | % 8
  \time 4/4  e''4. ( b'8 c''8 \noBeam b'8 ) c''8 g'8 | % 9
  a'4 e'8. e'16 g'4. g'8 \break | \barNumberCheck #10
  \autoBeamOff
  g'8 g'8 a'8 a'8 d'4 g'8. g'16 | % 11
  \time 3/4  e'2 r8 c''8 | % 12
  \time 4/4  e''4. ( b'8 c''8 b'8 ) c''8 g'8 \break | % 13
  a'4 e'8. e'16 g'4. g'8 | % 14
  g'8 g'8 a'8 a'8 d'4 g'8. g'16 | % 15
  \time 3/4  c'4 ( e'4 g'4 ) \break | % 16
  \autoBeamOn
  c''4. -\markup{ \bold {Rubato} } ( b'16 -- c''16 -- \once \override
  TupletBracket #'stencil = ##f
  \times 4/5  {
    d''16*255/256 -- b'16*255/256 -- c''16*255/256 -- a'16*255/256
    -- b'16*65/64 ) --
  }
  | % 17
  g'2. | % 18
  \time 2/4  a'4 ( ~ a'16 b'16 c''16 d''16 | % 19
  \time 3/4  e''2 d''4 ) | \barNumberCheck #20
  c''2. \bar "|."



}

text = \lyricmode { Прав  --  да, 
   Прав  --  да,   Прав  --  да,   що   вна  --  сяш   Сво  --  бо  --
   да   в_у  --  ма.   Кра  --  си  --  ва   и   мощ  --  на   си 
   ти   и   раз  --  пре  --  де  --  ляш   всич  --  ко   в_све  --
   та;   кра  --  си  --  ва   и   мощ  --  на   си   ти   и   раз  --
   пре  --  де  --  ляш   всич  --  ко   в_све  --  та.   Прав  --
   да,   Прав  --  да! 

 
 
}

textL = \lyricmode {Prav --  da,  Prav
  --  da,  Prav --  da,  shto vna -- syash Svo -- bo -- da  v_u  --
   ma.  Kra -- si -- va i mosht -- na si ti i raz -- pre -- de --
  lyash vsich -- ko  v_sve  --  ta;  kra -- si -- va i mosht -- na si
  ti i raz -- pre -- de -- lyash vsich -- ko  v_sve  --  ta.  Prav --
   da,  Prav --  da! 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Правда / Pravda" }
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