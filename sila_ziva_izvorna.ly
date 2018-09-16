


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Moderato" 4 = 84

\autoBeamOff

\repeat volta 2 { d'8 d' g' g' | a'8 a' b' b' | d''4 d'' | e''8 c'' c'' b' \break |

 d''8 c'' b' a' |} \alternative { { \time 3/4 a'4 g'2 |} { \time 4/4  a'4 g'2 d'8. e'16 | } } \repeat volta 2 { \time 3/4 d'2 d'8. e'16 \break | 
 
    d'4. g'8 g'8. a'16 | \time 4/4 } \alternative  { {b'4 g'2 d'8. e'16 | } { b'4 g'2 } }

}

text = \lyricmode { Си --
  ла жи -- ва, из -- вор -- на, те -- чу -- ща, си
  -- ла жи -- ва, из -- вор -- на, те -- чу -- ща.
  чу -- ща. Зун ме -- зун, зун ме -- зун, би --
  ном ту ме -- то. Зун ме -- ме -- то.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "Сила жива, изворна / Sila shiva, izvorna" }
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