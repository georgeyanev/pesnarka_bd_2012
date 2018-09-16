


melody = \absolute  {
  \clef treble
  \key d \minor
  \time 3/4 \tempo "Andante" 4 = 60

\partial 4
  
  \autoBeamOff

d'8 d' | \autoBeamOn g'8 ( a' ) a'2 | bes'8 ( a' )  bes' ( c'' )  bes'4 |a'2 a'8 a' \break |

\time 4/4  d''4. d''8 c'' ( d'' ) d'' ( c'' ) \time 3/4  bes'4 a'2 | \time 4/4  a'8 ( bes' ) c'' ( d'' ) c'' bes' a' g' \break |

\time 3/4  f'8 ( g' ) a'2 | \time 6/4  bes'4. a'8 bes' ( a' ) bes' ( c'' ) d'' ( c'' ) bes' ( a' ) \break |

\time 3/4  |a'8 ( g'8 ) a'2 | \time 6/4  d'4. e'8 f'4 e'4 d' cis' | \time 4/4  e'2 d' | \break

}

text = \lyricmode { Страд -- на
  ду -- шо, ти коп -- не -- еш, за как -- во го --
  риш и тле -- еш? Сло -- во -- то Ти, Бо -- же,
  ча -- кам и о -- бил -- на -- та Ти ми -- лост,
  за тях стра -- дам и коп -- не -- я.

 
 
}

textL = \lyricmode { Strad -- na
  du -- sho, ti kop -- ne -- esh, za kak -- vo go --
  rish i tle -- esch? Slo -- vo -- to Ti, Bo -- she,
  cha -- kam i o -- bil -- na -- ta Ti mi -- lost,
  za tjah stra -- dam i kop -- ne -- ja.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Страдна душо / Stradna duscho" }
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