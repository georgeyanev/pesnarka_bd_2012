  


melody = \absolute  {
  \clef treble
  \key c \minor
  \time 3/4 \tempo "Adagio" 4 = 56
  
  \partial 4
  
  g4  | c'2 b8 c' | d'2 g4 | es'2 d'4 | c'2 ( d'16 c' b c' \break |
 
 d'2 ) c'4 | c'2 f'4 | f'2 es'8 d' | es'2 f'4 | g'2 as'4 \break 

g'2 fis'4 | g'2 as'4 | g'2 f'4 \autoBeamOff \repeat volta 2 { f'2 es'8 d' |  es'2 f'4 \break | 
                                                 
    g'2 as'4 | g'2 f'4 | es'2 d'4 }  \alternative { { c'2 f'4 } {  c'2. } }  \break | 
  
  c'2 d'4 |  es'2. |  d'2 c'4 | c'2. | b2 b4 | c'2. | 

}

text = \lyricmode { Във мрак, тъм
  -- но -- та е бил жи -- во -- тът наш, но Слън
  -- це -- то на Жи -- во -- та про -- си -- я у
  нас и ний тръг -- нах -- ме във пъ -- тя чист
  и свят за нас, и нас. Свят за нас, свят за
  нас, свят за нас.

 
 
}

textL = \lyricmode {Vav mrak, tam -- no -- ta e bil zhi -- vo -- tat nash, no Slan
  -- tse -- to na Zhi -- vo -- ta pro -- si -- ya u nas i niy trag --
  nah -- me vav pa -- tya chist i svyat za nas, i nas. Svyat za
  nas, svyat za nas, svyat za nas.
 
 
}

\score{
 \header {
  title = \markup { \fontsize #-3 "В мрак тъмнота / V mrak tamnota" }
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