


melody = \absolute  {
  \clef treble
  \key a \minor
  \time 3/4 \tempo "Moderato" 4 = 88
 \partial 4
 
 
 e'4 |  a'2 b'4 | c''2 b'4 | a'2 e''4 | e''2 \fermata d''4 | e''2 d''4 | c''2 b'4 \break |
 
 a'2 gis'4 | b'2. | b'2 \fermata e'4 |  a'2 b'4 | c''2 b'4 | a'2 g'4 | f'2 \fermata f'4 \break |
 
e'2 d'4 | c'2 d'4 | e'2 gis'4 | b'2. | a'2 \fermata a'4 | f'2. | a'2 g'4 \break |


 f'2. | e'2 d'4 e'2 d'4 | c'2 b4 | e'2 gis'4 | b'2. | a'2 \fermata  \break

}

text = \lyricmode {   Ви -- сок
  пла -- нин -- ски връх блес -- ти, об -- лян с’лъ
  -- чи от не -- бе -- са -- та. Там чис -- то из
  -- вор -- че шур -- ти и в~химн из -- ли -- ва
  си ду -- ша -- та, ду -- ша -- та, ду -- ша --
  та. И в’химн из -- ли -- ва си ду -- ша -- та.

 
 
}

textL = \lyricmode {
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "При източника / Pri iztochnika" }
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