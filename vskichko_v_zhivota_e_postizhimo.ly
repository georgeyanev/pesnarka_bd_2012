


melody = \absolute  {
  \clef treble
  \key c \major
  \time 4/4 \tempo "Moderato" 4 = 76
  
  \autoBeamOff
 
 c'4 e'8. f'16 g'4 e'4 | a'4 g'8. e'16 g'4 g'4 | \break
 

g'4 f'8. e'16 f'4 a'4 | \time 5/4 g'4 g'8. fis'16 g'2 c''4 | \time 2/4 b'4 a'8 b'8 | \break 


\time 4/4 c'4 c'2 c'4 | \repeat volta 2 { g'4 e'8. f'16 g'4 g'4 | a'4 \autoBeamOn g'8 ( e'8 ) f'4 d' | \break

\autoBeamOff

d'4 d'8 e'8 f'4 a'4 | g'2 e'8 d'8 e'8 f'8 | \time 2/4 g'2 | \break

\time 5/4 a'4 g' a'8 b'8 c''2 | \time 4/4 \autoBeamOn d''8 ( c'' )  b' ( a'  ) g'2 | \break

d'8 ( e' )  f' ( e' )  g' ( f' )   e' d'  | } \alternative { { c'2. c''4} { c'2. } } 



}

text = \lyricmode { Всич -- ко в~Жи -- во -- та е по -- сти -- жи -- мо,

ко -- га -- то вре -- ме -- то е до -- бро

и ний сме ра -- зум -- ни.

 

За -- що -- то До -- бро -- то е ос -- но -- ва,

а раз -- ум -- ност -- та цел,

с~ко -- и -- то Ду -- хът

гра -- ди бъд -- ни -- ни, бъд -- ни -- ни,

ве -- ли -- ки бъд -- ни -- ни. За -- ни. 

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #0 "Всичко в Живота е постижимо / Vsitschko v zhivota e postizhio" }
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