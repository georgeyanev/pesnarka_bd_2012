


melody = \absolute  {
  \clef treble
  \key f \major
  \time 3/4 \tempo "Andante" 4 = 60
 \partial 4

a4 | d'4 e' f' | \time 5/4  a4 a d'2 e'4 | \time 4/4  g'4 f' e' d' | \time 5/4  a4 a d'2 e'4 \break |

\time 6/4  g'4 f' e' d' d'2 |  f'4 e' d' a b b |  \break | 

\time 4/4  b2 a \fermata \time 7/4  \repeat volta 2 { a'4 gis'8 a' bes'4 a'8. gis'16 a'2 g'8 f' \break | 
                                                      
 e'4 g' f' f' e' d'2 | \time 4/4  e'4 g'8 f' e'4 d' | f'4 e' d'2 } \break

\autoBeamOff \time 2/4  \repeat volta 2 { d''8. cis''16 d''8 a' | bes'4 a' g'8 f' e' f' | g'4 a'8 a' | \break 

d'8 e' f'4 | e'8 d' e' f' }  \alternative { { d'2 | } {  \time 3/4  d'2 a4 } } \break |

\time 4/4  \repeat volta 2 { a'2 gis'4 a' | bes'2 a' | \time 6/4  g'4 ( a' ) f'2 e'4 f' | g'4 ( a' ) e'2. e'4 \break |

f'4 g' a' e' g'2 | \time 4/4  f'2 e'} \alternative { { | d'2. a4 | } { d'2. s4 } }


}

text = \lyricmode { В_на -- ча --
  ло бе Сло -- во -- то и Сло -- во -- то бе у
  Бо -- га, и Сло -- во -- то бе Бог. То в_на --
  ча -- ло бе у Бо -- га. Всич -- ко чрез Не --
  го ста -- на и ко -- е -- то е ста -- на --
  ло, ни -- що без Не -- го не ста -- на. В_не --
  го бе жи -- во -- тът и жи -- во -- тът бе ви
  -- де -- ли -- на на че -- ло -- ве -- ци -- те.
  те. И ви -- де -- ли -- на -- та све -- ти в_тъм
  -- ни -- на -- та, и тъм -- ни -- на -- та я не
  об -- зе. И зе.

 
 
}

textL = \lyricmode {  V_na -- cha --
  lo be Slo -- vo -- to, i Slo -- vo -- to be u Bo -- ga, i Slo --
  vo -- to be Bog. To v_na -- cha -- lo be u Bo -- ga. Vsich --
  ko chrez Ne -- go sta -- na i ko -- e -- to e sta -- na -- lo, ni
  -- shto bez Ne -- go ne sta -- na. V_Ne -- go be zhi -- vo -- ta
  i zhi -- vo -- ta be vi -- de -- li -- na na che -- lo -- ve -- tsi
  -- te. te. I vi -- de -- li -- na -- ta sve -- ti v_tam -- ni
  -- na -- та, i tam -- ni -- na -- ta ya ne ob -- ze. I ze.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Небето се отваря / V nachalo be slovoto" }
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