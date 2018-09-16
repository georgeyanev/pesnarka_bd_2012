


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 2/4 \tempo "Adantino" 4 = 69
  
  \autoBeamOff

 d''8 c'' bes' a' | c''8 bes' a' g' | a'8 g' fis' es' \break |

d'8 c' d'4 | g'2 | \time 5/4  a'4 c''8 bes' a' g' a'2 \break |

g'4 a'8 g' fis' es' d'2 |  \time 2/4  c'4 d'8 es' | g'2 \break |

a'4 g'8 fis' | es'2 | c'4 d'8 es' | g'2 |  fis'4 \fermata es' \fermata | d'2 \fermata  \break



}

text = \lyricmode {  Тъ -- ги,
  скър -- би са бо -- гат -- ство за Жи -- во --
  та, в_ду -- ша скри -- ти за бъд -- ни До -- бри
  -- ни, за бла -- ги пло -- до -- ве, за свет --
  ли дни, за свет -- ли дни, за свет -- ли дни,
  дни, дни, дни.

 
 
}

textL = \lyricmode {  Ta -- gi, skar
  -- bi sa bo -- gat -- stvo za Zhi -- vo -- ta, v_du -- sha skri
  -- ti za bad -- ni Do -- bri -- ni, za bla -- gi plo -- do --
  ve, za svet -- li dni, za svet -- li dni, za svet -- li dni,
  dni, dni, dni.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Тъги скърби са богатство / Tagi skarbi sa bogatstvo" }
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