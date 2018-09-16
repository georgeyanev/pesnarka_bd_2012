


melody = \absolute  {
  \clef treble
  \key g \major
  \time 2/4 \tempo "Tempo di marcia" 4 = 100
 \partial 8
 
 \autoBeamOff

b8 | e'8. fis'16 g'8 a' | b'4 b'8 b' | e''8 d'' c'' b' | c''4 c''8 c'' \break |

d''8 c'' b' a' | b'4 b'8 b' | b'8 a' g' fis' | e'4 e'8 e' \break |



\repeat volta 2 { fis'8. fis'16 fis'8 fis' | fis'4 fis'8 fis' | g'8. g'16 g'8 g' | g'4 g'8 g' \break | 

   a'8.  a'16 a'8 a' | b'4. a'8 | b'8 a' g'  fis'8 |} \alternative { {  e'4. e'8 |}  {e'4. \break | } }
  

}

text = \lyricmode { На -- пред
  да хо -- дим сме -- ло в_чер -- то -- зи -- те
  без -- мъл -- вни на тай -- но -- то поз -- на --
  ние, с~Жи -- вот и Си -- ла пъл -- ни. Кат вих
  -- ри над го -- ри -- те с~дух пла -- мен във
  гър -- ди -- те на -- пред да по -- ле -- тим,
  све -- та да об -- но -- вим! Кат вим!

 
 
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