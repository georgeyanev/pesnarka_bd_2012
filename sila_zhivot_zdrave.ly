


melody = \absolute  {
  \clef treble
  \key d \minor
  \time 6/4 \tempo "Andante" 4 = 60
 
 a4 ( d'8. e'16 f' e' d' cis' d'8 e' ) a2 \break
 
 \time 5/4  a'16 ( b' a' gis' a' b' a' gis' a'8 b' ) a'2 \break |


 \time 4/4  d''8. ( e''16 f'' e'' d'' cis'' d''8 bes' a' g'| f'8 e' f' g' ) a'2 \break |

\time 2/4 d''4  cis''8 \noBeam cis'' | d''2  | f'4 e'8 e' | d'4. \bar "!" d'16 ( e' ) \break | 

 \time 6/8  \repeat volta 2 { | \tempo 4.=60 f'4 f'8 f'4 e'16 \noBeam d' |e'4. ~ e'4 e'16 ( f' ) | g'4 a'8 f'4 e'8 \break |

 f'4 e'8 d'4 e'8 |  e'4 g'8 f'4 e'8 | f'4 e'8 d'4 e'8 \break |
 
 e'4 g'8 f'4 e'8 | f'4 e'8 \tempo 4=60 d'4. | \time 2/4  d''4 cis''8 \noBeam cis'' \break |

d''2 | f'4 e'8 \noBeam e' |} \alternative { { d'4. \bar "!" \bar "!" d'16 ( e'16 ) } { d'2 } } \break |

 }

text = \lyricmode { Си -- ла, Жи
  -- вот, здра -- ве, те са ед -- но, те са ед --
  но. Слу -- жи -- те -- ли на Ду -- ха, но -- си
  -- те -- ли на Ра -- дост -- та, кре -- пи -- те
  -- ли на мла -- дост -- та, кре -- пи -- те -- ли
  на мла -- дост -- та, те са ед -- но, те са ед
  -- но. Слу -- но.

 
 
}

textL = \lyricmode {  Si --  la,  Zhi --
   vot,  zdra --  ve,  te sa ed --  no,  te sa ed --  no.  Slu -- zhi
  -- te -- li na Du --  ha,  no -- si -- te -- li na Ra -- dost --
   ta,  kre -- pi -- te -- li na mla -- dost --  ta,  kre -- pi -- te
  -- li na mla -- dost --  ta,  te sa ed --  no,  te sa ed --  no. 
  Slu --  no. 
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-1 "Сила живот здраве / Sila zhivot zdave" }
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