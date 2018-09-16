


melody = \absolute  {
  \clef treble
  \key es \major
  \time 2/4 \tempo "Andante" 4 = 60
  
 
  
 c'8 [ ( d' es' c' | es'2 ) ]  | c'8 [ ( d' es' ) ]  c' |  \time 3/4  as'4 \fermata g'2 \break |
 
\time 5/4  c''4. b'8 c'' ( as' ) g'2 |  \autoBeamOff  \time 3/4  \repeat volta 2 { g'8 c'' es''4. d''8 | c''8 g' bes' [  ( as' )  ]   g' [ ( f' ) ]  \break |

 \time 4/4  es'4 ( d'8. ) es'16 
 
 \once \override Staff.TextScript #'extra-offset = #'( 3.0 . 0.0 )

c'2 ^\fine } \repeat volta 2 {  \time 3/4  es'8. f'16 g'4 c' | \time 4/4  as'4 g'8. fis'16 g'2 \break | 

\time 5/4  c''4. ( b'8 ) c'' as' g'2 |  \time 4/4  f'8. [ ( g'16 ) ] es'8. d'16 es'2 | es'8. [ ( f'16 )  ] d'8. es'16 c'2 \break |

\time 3/4  g'8 c'' es''4. d''8 | c''8 g' bes' [ ( as' ) ] g' [ ( f' ) ] | \time 4/4  es'4 ( d'8. )  \once \override Staff.TextScript #'extra-offset = #'( - 24.0 . 3.0 ) es'16 _\rep  \once \override Staff.TextScript #'extra-offset = #'(  - 16.0 . 3.0 ) c'2_\dcapo


}

}

text = \lyricmode { Аз във Жи --
  во -- та ще бла -- гу -- вам. Ду -- хът и ду --
  ша -- та ми шеп -- нат то -- ва. И Ду -- хът
  ми шеп -- не то -- ва, шеп -- не то -- ва, шеп
  -- не то -- ва, шеп -- не то -- ва. Ду -- хът и
  ду -- ша -- та ми шеп -- нат то -- ва.

 
 
}

textL = \lyricmode { Az vav zhi -- vo
  -- ta shte bla -- gu -- vam. Du -- hat i du -- sha -- ta mi shtep
  -- nat to -- va. I Du -- hat mi shep -- ne to -- va, shep -- ne
  to -- va, shte -- pne to -- va, shep -- ne to -- va. Du -- hat
  i du -- sha -- ta mi shte -- pnat to -- va.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Духът ми шепне това / Duhat mi schepne tova" }
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