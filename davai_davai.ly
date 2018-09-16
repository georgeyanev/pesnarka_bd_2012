


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 5/4 \tempo "Moderato" 4 = 60

a4 c' e' a'2 |c''4 b' a' e'2 | c''4 c'' c'' c''2 \break |

 b'8 ( c'' ) d''4 b' a'2 | b'4 a' gis' a'2 | f'4 d' e' e'2 \break |

 a'4 b' a' gis'2 | f'4 gis' f' e'2 | a'4 a' f' gis'2 \break |

f'4 d' e' e'2 \repeat volta 2 {| a'4 a' b'8 ( c'' ) d''2 |  e''4 c'' b' a'2 \break | % 13
    
 b'4 a' gis' a'2 | f'4 d' e' e'2 } | gis'4 f' f' gis'2 \break |

f'4 d' e' e'2 | gis'4 f' f' gis'2 |  f'4  d' e' e'2|

}

text = \lyricmode { Да -- вай,
  да -- вай, всич -- ко да -- вай, чис -- то се --
  ме пше -- ни -- че -- но. Да се се -- е на ни --
  ва -- та, на ни -- ва -- та кра -- си -- ва --
  та. Да се чис -- ти през зи -- ма -- та. Да се
  рад -- ва на Жи -- во -- та всич -- ко ся -- то
  на по -- ле -- то, на по -- ле -- то от Не --
  бе -- то, на по -- ле -- то от Не -- бе -- то.

 
 
}

textL = \lyricmode {  Da -- vay, da --
  vay, vsich -- ko da -- vay, chis -- to se -- me pshe -- ni --
  che -- no. Da se se -- e na ni -- va -- ta, na ni -- va -- ta
  kra -- si -- va -- ta. Da se chis -- ti prez zi -- ma -- ta. Da
  se rad -- va na Zhi -- vo -- ta vsich -- ko sya -- to na po -- le --
  to, na po -- le -- to ot Ne -- be -- to, na po -- le -- to ot ne
  -- be -- to.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Давай, давай / Davaj, davaj" }
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