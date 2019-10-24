


melody = \absolute  {
  \clef treble
  \key g \minor
  \time 3/4 \tempo "Moderato" 4 = 76
 
  bes2 ^\pp c'4 |  a2. |  c'2. |  bes2 a4 |  g2. |  d'2. ^\p ^\< \break |

 cis'2 d'4 \! | es'2. | d'2 ( c'4 ^\> ) | bes2. | a2. \! | r4 d'2 ^\p \break |
 
 es'2. ^\< | g'2. \! | a'2. ^\mf | bes'2.^ \p ^\< | g'8^\sosten ( [ a' ) ] bes'4 c'' | es''2 \fermata d''4 \! \break |

d''2. ^\> \! | d'2 ^\p ^\atempo g'4 | bes'2. | a'4 ^\< bes' c'' \! | g'2. ^\> | g'2. \!  \break |

\tempo "Moderato" 4 = 84  d'2 d'4 | f'2 c'4 \fermata | c'4 ^\< c' c' \! | bes2 c'4 | es'2. ^\> \break |

 d'2 \! d'4 ^\p ^\< | es'2. \! \> |  c'2 \! d'4 ^\mf ^\< | g'2 \! \> d'4 \! | \time 4/4  | a'4 ^\< ( es'' \! d'' ^\f ) c'' ^\> \break |

 \time 3/4  | bes'2 \! a'4 ^\< | c''2 bes'4 ^\mf \! | f''2 ( es''4 ) | c''2 ^\> bes'4 \! \break |

 a'2 ^\> bes'4 | g'2 g'4 | g'2. \! | d'2 ^\p d'4 | d'2. \break |
 
 cis'2 d'4 | es'2.^\pocoapocorall | d'2. | a2 b4 | c'2. \> | d'2. ^\ppp \! \fermata \break

}

text = \lyricmode { Стран -- ник
  съм във то -- зи свят. Ни -- ко -- го не по --
  зна -- вам, ос -- вен Те -- бе. Ти, Гос -- по --
  ди, Бо -- же мой, си съз -- дал всич -- ко за
  ме -- не. Аз от -- пра -- вям сво -- я -- та бла
  -- го -- дар -- ност към Те -- бе, на Те -- бе,
  Гос -- по -- ди, въз -- ло -- жих сво -- е -- то
  у -- по -- ва -- ни -- е. Да въз -- ле -- зе мол
  -- ба -- та ми към Те -- бе.

 
 
}

textL = \lyricmode {  Stran -- nik sam
  vav to -- zi svyat. Ni -- ko -- go ne po -- zna -- vam, os --
  ven Te -- be. Ti, Gos -- po -- di, Bo -- zhe moy, si saz --
  dal vsich -- ko za me -- ne. Az ot -- pra -- vyam svo -- ya -- ta
  bla -- go -- dar -- nost kam Te -- be, na Te -- be, Gos -- po --
  di, vaz -- lo -- zhih svo -- e -- to u -- po -- va -- ni -- e.
  Da vaz -- le -- ze mol -- ba -- ta mi kam Te -- be.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Странник съм в този свят / Strannik sum v tozi svjat" }
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