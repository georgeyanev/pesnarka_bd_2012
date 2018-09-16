


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 3/4 \tempo "Moderato" 4 = 40
 \partial 4
 
 d'4 |  g'2 a'4 | bes'2 a'4 | g'2 fis'4 | a'2. | d'2. ~ | d'4 r d'' \break         

d''2 es''4 | d''2 cis''4 | d''2 es''4 | d''2. ~ | d''4 r c'' | bes'2 b'4 \break |

bes'4 ( a' ) bes' | c''2 bes'4 | a'2. | a'2. ~ | a'4 r a' |  bes'2 bes'4 \break |

 c''2 c''4 | d''2 a'4 |  bes'2. ~ |  bes'4 r a' |  bes'2 a'4 |  bes'2 a'4 \break |
 
 g'2 fis'4 | g'2. ~ | g'4 r d'' | d''2 es''4 | d''2 cis''4 \break |
 
 d''2 es''4 | d''2. ~ | d''4 r g'' | f''2 es''4 | d''2 d''4 | c''2 b'4 \break | 
 
  d''2. ~ | d''4 r c'' | bes'2 a'4 | bes'2 a'4 | g'2 fis'4 | g'2. ~ |g'4 r \break |
 
}

text = \lyricmode { Из -- грей,
  из -- грей ти, мо -- е Слън -- це, за -- що --
  то ча -- кам все -- ки ден; за теб коп -- не --
  е мой -- то сър -- це и в_пъ -- тя си съм из
  -- мо -- рен; ти но -- сиш ми Жи -- вот бла --
  жен. Жи -- вот бла -- жен, Жи -- вот бла -- жен,
  бла -- жен, бла -- жен, Жи -- вот бла -- жен; ти
  но -- сиш ми Жи -- вот бла -- жен.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Изгрей ти мое слънце / Izgrei ti moe slanze" }
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