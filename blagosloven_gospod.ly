


melody = \absolute  {
  \clef treble
  \key f \major
  \time 4/4 \tempo "Andante" 4 = 56
  
  \autoBeamOff

 c'4 f'8. g'16 a'4 d'' c'' a' c''2 | c''4 c'' c'' c''4. d''8 c''2 r4 \break |

 g'4 g'8. g'16 g'4 a' bes'2 b' |  bes'4 d'' d'' d'' c''4. bes'8 a'2 \break | 
 
 g'4 g' g' g' g'4. a'8 bes'2 | a'4 a' a' a' a'4. bes'8 c''2  \break | 
 
  d''4 d'' d'' d''8 ( f'' ) \fermata e''4. d''8 c''2 | g'4 g' g' g'8 ( bes' ) \fermata a'4. g'8 f'2

}

text = \lyricmode { Бла -- го --
  сло -- вен Гос -- под Бог наш на всич -- ки ве
  -- ко -- ве; бла -- го -- сло -- вен Ба -- ща наш
  на Свет -- ли -- те ду -- хо -- ве, на Свет --
  ли -- те ду -- хо -- ве, на Свет -- ли -- те ду
  -- хо -- ве, на Свет -- ли -- те ду -- хо -- ве,
  на Свет -- ли -- те ду -- хо -- ве.

 
 
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
  
  
  
  \layout {}
  \midi {}
 
}