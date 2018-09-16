


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 2/4 \tempo "Andante" 4 = 72
 \partial 4
 
 \autoBeamOff
 
e'8 e'8 | a'4 b' | c''4 b' | a'4 gis' ~ | gis'4 e'8 e' | e''4 f'' \break | 

e''4 d'' |  c''4 \fermata b'8 a' |  gis'4 f' | e'4 dis' |  f'4 e' ~ |  e'4 b'8 c'' \break |

d''4 e'' |  c''4 b' | a'4 \fermata g'8 g' \repeat volta 2 {   |  c''4 g' |  c''4 d'' | e''4 c'' ~ \break | 

c''4 e''8 f'' | g''4 f'' | e''4 d'' | c''4 \fermata e'8 e' | a'4 b' | c''4 d'' \break |

e''4 b' ~ | b'4 d''8 d'' c''4 b' | a'4 gis' |} \alternative { { a'4 \fermata g'8 g'  } { a'2 | } }


}

text = \lyricmode { Си -- не
  мой, па -- зи Жи -- во -- та, скри -- ти -- я у
  те -- бе жар; той без -- це -- нен е по сми --
  съл и ве -- ли -- ко -- ле -- пен дар. Дух без
  -- смър -- тен, Дух не -- тле -- нен, туй, ко -- е
  -- то веч -- но бди и ра -- бо -- ти без у --
  мо -- ра, не -- пре -- стан -- но в_теб гра -- ди!
  Дух без -- ди.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Сине мой пази живота / Sine moi pasi shivota" }
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