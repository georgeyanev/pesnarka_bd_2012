


melody = \absolute  {
  \clef treble
  \key d \minor
  \time 3/4 \tempo "Andante" 4 = 60
 \partial 4
 
 \autoBeamOff
 
a4 | d'2 e'4 | f'4 d'2 | \time 4/4  a'4 bes' a' gis' | \time 3/4  a'2 a'4 \break |        


d''2 e''4 | \time 4/4  f''4 e''8 e'' d''4 cis'' |  d''4 a'2 a'4 | \time 3/4  bes'2 a'4 \break | 

 \time 4/4  bes'4 a' bes' c'' | bes'4 a'2 a'4 | \time 3/4  d''2 cis''4 | \time 4/4  d''4 a' bes' a' \break |

a'4 g'2 f'4 |  e'4 d' f' e' | d'4 cis' e'2 | \time 3/4  d'2 a'4 \break |

d''2 a'4 | \time 4/4  bes'4 a'2 d'4 |  f'2 e'4 cis' | \time 3/4  d'2. \fermata |\break


}

text = \lyricmode { Шу -- ми,
  аз слу -- шам цял свят да шу -- ми! Шу -- мят
  сър -- ца -- та че -- ло --  веш -- ки всред
  свой -- те и -- до -- ли и греш -- ки, шу -- мят
  без -- спир -- но у -- мо -- ве -- те, го -- лям
  е при -- лив в~до -- мо -- ве -- те. Шу -- ми,
  аз слу -- шам цял свят да шу -- ми!

 
 
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